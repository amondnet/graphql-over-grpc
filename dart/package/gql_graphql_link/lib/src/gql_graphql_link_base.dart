// TODO: Put public facing types in this file.

import 'dart:async';
import 'dart:convert';

import 'package:gql_exec/gql_exec.dart' as $gql_exec;
import 'package:gql_link/gql_link.dart';
import 'package:graphql_over_grpc/graphql_over_grpc.dart';
import 'package:grpc/grpc.dart' show ChannelOptions, ClientChannel;

typedef GrpcResponseDecoder = FutureOr<Map<String, dynamic>?> Function(
    Response httpResponse);

/// Checks if you are awesome. Spoiler: you are.
class GqlGraphqlLink extends Link {
  final String host;
  final GraphQLClient _client;

  /// Serializer used to serialize request
  final RequestSerializer serializer;

  /// A function that decodes the incoming http response to `Map<String, dynamic>`,
  /// the decoded map will be then passes to the `RequestSerializer`.
  /// It is recommended for performance to decode the response using `compute` function.
  /// ```
  /// httpResponseDecoder : (http.Response httpResponse) async => await compute(jsonDecode, httpResponse.body) as Map<String, dynamic>,
  /// ```
  GrpcResponseDecoder grpcResponseDecoder;

  static Map<String, dynamic>? _defaultGrpcResponseDecoder(Response response) =>
      json.decode(
        response.data,
      ) as Map<String, dynamic>?;

  GqlGraphqlLink(
    this.host, {
    int port = 443,
    ChannelOptions channelOptions = const ChannelOptions(),
    this.grpcResponseDecoder = _defaultGrpcResponseDecoder,
    this.serializer = const RequestSerializer(),
    this.parser = const ResponseParser(),
  }) : _client = GraphQLClient(
            ClientChannel(host, port: port, options: channelOptions));

  /// Parser used to parse response
  final ResponseParser parser;

  @override
  Stream<$gql_exec.Response> request($gql_exec.Request request,
      [NextLink? forward]) {
    final body = _encodeAttempter(
      request,
      serializer.serializeRequest,
    )(request);

    final grpcBody = _encodeAttempter(
      request,
      (Map body) => json.encode(
        body,
        toEncodable: (dynamic object) => object.toJson(),
      ),
    )(body);

    final grpcRequest = Request(
      query: grpcBody,
      variables: _toStruct(request.variables),
      operationName: request.operation.operationName,
    );

    return _client
        .execute(grpcRequest)
        .asyncMap((response) => _parseGrpcResponse(response));
  }

  Future<$gql_exec.Response> _parseGrpcResponse(Response response) async {
    try {
      final responseBody = await grpcResponseDecoder(response);
      return parser.parseResponse(responseBody!);
    } catch (e, stackTrace) {
      throw GrpcLinkParserException(
        originalException: e,
        originalStackTrace: stackTrace,
        response: response,
      );
    }
  }

  /// wrap an encoding transform in exception handling
  T Function(V) _encodeAttempter<T, V>(
    $gql_exec.Request request,
    T Function(V) encoder,
  ) =>
      (V input) {
        try {
          return encoder(input);
        } catch (e, stackTrace) {
          throw RequestFormatException(
            originalException: e,
            originalStackTrace: stackTrace,
            request: request,
          );
        }
      };

  Struct _toStruct(Map<String, dynamic> map) {
    return Struct(
        fields: map.map((key, value) => MapEntry(key, _toValue(value))));
  }

  Value _toValue(dynamic object) {
    if (object == null) {
      return Value(nullValue: NullValue.NULL_VALUE);
    } else if (object is String) {
      return Value(stringValue: object);
    } else if (object is double) {
      return Value(numberValue: object);
    } else if (object is int) {
      return Value(numberValue: object.toDouble());
    } else if (object is bool) {
      return Value(boolValue: object);
    } else if (object is Map<String, dynamic>) {
      return Value(structValue: _toStruct(object));
    } else if (object is List<dynamic>) {
      return Value(listValue: _toListValue(object));
    } else {
      throw ArgumentError('');
    }
  }

  ListValue _toListValue(List<dynamic> list) {
    return ListValue(values: list.map((e) => _toValue(e)));
  }
}

/// Exception occurring when parsing fails.
//@immutable
class GrpcLinkParserException extends ResponseFormatException {
  /// Response which caused the exception
  final Response response;

  const GrpcLinkParserException({
    required Object? originalException,
    required StackTrace? originalStackTrace,
    required this.response,
  }) : super(
          originalException: originalException,
          originalStackTrace: originalStackTrace,
        );
}
