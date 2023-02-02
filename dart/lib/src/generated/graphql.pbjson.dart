///
//  Generated code. Do not modify.
//  source: graphql.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {'1': 'variables', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'variables'},
    const {'1': 'operationName', '3': 3, '4': 1, '5': 9, '10': 'operationName'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeRI1Cgl2YXJpYWJsZXMYAiABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0Ugl2YXJpYWJsZXMSJAoNb3BlcmF0aW9uTmFtZRgDIAEoCVINb3BlcmF0aW9uTmFtZQ==');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
    const {'1': 'errors', '3': 2, '4': 3, '5': 11, '6': '.graphql.Error', '10': 'errors'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRISCgRkYXRhGAEgASgJUgRkYXRhEiYKBmVycm9ycxgCIAMoCzIOLmdyYXBocWwuRXJyb3JSBmVycm9ycw==');
@$core.Deprecated('Use errorDescriptor instead')
const Error$json = const {
  '1': 'Error',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'locations', '3': 2, '4': 3, '5': 11, '6': '.graphql.SourceLocation', '10': 'locations'},
    const {'1': 'path', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.ListValue', '10': 'path'},
    const {'1': 'extensions', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'extensions'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode('CgVFcnJvchIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEjUKCWxvY2F0aW9ucxgCIAMoCzIXLmdyYXBocWwuU291cmNlTG9jYXRpb25SCWxvY2F0aW9ucxIuCgRwYXRoGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLkxpc3RWYWx1ZVIEcGF0aBI3CgpleHRlbnNpb25zGAQgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKZXh0ZW5zaW9ucw==');
@$core.Deprecated('Use sourceLocationDescriptor instead')
const SourceLocation$json = const {
  '1': 'SourceLocation',
  '2': const [
    const {'1': 'line', '3': 1, '4': 1, '5': 5, '10': 'line'},
    const {'1': 'column', '3': 2, '4': 1, '5': 5, '10': 'column'},
  ],
};

/// Descriptor for `SourceLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sourceLocationDescriptor = $convert.base64Decode('Cg5Tb3VyY2VMb2NhdGlvbhISCgRsaW5lGAEgASgFUgRsaW5lEhYKBmNvbHVtbhgCIAEoBVIGY29sdW1u');
