///
//  Generated code. Do not modify.
//  source: graphql.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/struct.pb.dart' as $1;

class Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'graphql'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'query')
    ..aOM<$1.Struct>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variables', subBuilder: $1.Struct.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operationName', protoName: 'operationName')
    ..hasRequiredFields = false
  ;

  Request._() : super();
  factory Request({
    $core.String? query,
    $1.Struct? variables,
    $core.String? operationName,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    if (variables != null) {
      _result.variables = variables;
    }
    if (operationName != null) {
      _result.operationName = operationName;
    }
    return _result;
  }
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request)) as Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  $1.Struct get variables => $_getN(1);
  @$pb.TagNumber(2)
  set variables($1.Struct v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVariables() => $_has(1);
  @$pb.TagNumber(2)
  void clearVariables() => clearField(2);
  @$pb.TagNumber(2)
  $1.Struct ensureVariables() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get operationName => $_getSZ(2);
  @$pb.TagNumber(3)
  set operationName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperationName() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationName() => clearField(3);
}

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'graphql'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data')
    ..pc<Error>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errors', $pb.PbFieldType.PM, subBuilder: Error.create)
    ..hasRequiredFields = false
  ;

  Response._() : super();
  factory Response({
    $core.String? data,
    $core.Iterable<Error>? errors,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    if (errors != null) {
      _result.errors.addAll(errors);
    }
    return _result;
  }
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response)) as Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Error> get errors => $_getList(1);
}

class Error extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Error', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'graphql'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..pc<SourceLocation>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locations', $pb.PbFieldType.PM, subBuilder: SourceLocation.create)
    ..aOM<$1.ListValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path', subBuilder: $1.ListValue.create)
    ..aOM<$1.Struct>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extensions', subBuilder: $1.Struct.create)
    ..hasRequiredFields = false
  ;

  Error._() : super();
  factory Error({
    $core.String? message,
    $core.Iterable<SourceLocation>? locations,
    $1.ListValue? path,
    $1.Struct? extensions,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (locations != null) {
      _result.locations.addAll(locations);
    }
    if (path != null) {
      _result.path = path;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error)) as Error; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<SourceLocation> get locations => $_getList(1);

  @$pb.TagNumber(3)
  $1.ListValue get path => $_getN(2);
  @$pb.TagNumber(3)
  set path($1.ListValue v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => clearField(3);
  @$pb.TagNumber(3)
  $1.ListValue ensurePath() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Struct get extensions => $_getN(3);
  @$pb.TagNumber(4)
  set extensions($1.Struct v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtensions() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtensions() => clearField(4);
  @$pb.TagNumber(4)
  $1.Struct ensureExtensions() => $_ensure(3);
}

class SourceLocation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SourceLocation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'graphql'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'line', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'column', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SourceLocation._() : super();
  factory SourceLocation({
    $core.int? line,
    $core.int? column,
  }) {
    final _result = create();
    if (line != null) {
      _result.line = line;
    }
    if (column != null) {
      _result.column = column;
    }
    return _result;
  }
  factory SourceLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SourceLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SourceLocation clone() => SourceLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SourceLocation copyWith(void Function(SourceLocation) updates) => super.copyWith((message) => updates(message as SourceLocation)) as SourceLocation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SourceLocation create() => SourceLocation._();
  SourceLocation createEmptyInstance() => create();
  static $pb.PbList<SourceLocation> createRepeated() => $pb.PbList<SourceLocation>();
  @$core.pragma('dart2js:noInline')
  static SourceLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SourceLocation>(create);
  static SourceLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get line => $_getIZ(0);
  @$pb.TagNumber(1)
  set line($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLine() => $_has(0);
  @$pb.TagNumber(1)
  void clearLine() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get column => $_getIZ(1);
  @$pb.TagNumber(2)
  set column($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColumn() => $_has(1);
  @$pb.TagNumber(2)
  void clearColumn() => clearField(2);
}

