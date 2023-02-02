```bash
 apt update && apt install -y protobuf-compiler
 dart pub global activate protoc_plugin
 mkdir -p lib/src/generated
 protoc --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart --proto_path=/app/proto/helloworld --dart_out=grpc:lib/src/generated -Iproto /app/proto/helloworld/helloworld.proto
```