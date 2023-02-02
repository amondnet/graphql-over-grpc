///
//  Generated code. Do not modify.
//  source: graphql.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'graphql.pb.dart' as $0;
export 'graphql.pb.dart';

class GraphQLClient extends $grpc.Client {
  static final _$execute = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/graphql.GraphQL/Execute',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));

  GraphQLClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Response> execute($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$execute, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class GraphQLServiceBase extends $grpc.Service {
  $core.String get $name => 'graphql.GraphQL';

  GraphQLServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Response>(
        'Execute',
        execute_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Response> execute_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async* {
    yield* execute(call, await request);
  }

  $async.Stream<$0.Response> execute(
      $grpc.ServiceCall call, $0.Request request);
}
