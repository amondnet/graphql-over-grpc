
mkdir -p lib/src/generated

PROTOBUF=../protobuf
PROTOC="protoc --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart --dart_out=grpc:lib/src/generated -I$PROTOBUF/src -I../proto"

$PROTOC $PROTOBUF/src/google/protobuf/any.proto
$PROTOC $PROTOBUF/src/google/protobuf/duration.proto
$PROTOC $PROTOBUF/src/google/protobuf/empty.proto
$PROTOC $PROTOBUF/src/google/protobuf/struct.proto
$PROTOC $PROTOBUF/src/google/protobuf/timestamp.proto

$PROTOC ../proto/graphql.proto