# Generating Classes

```sh
protoc --proto_path=../../../../../schemas --dart_out=. ../../../../../schemas/**.proto
protoc --proto_path=../../../../../schemas/google/type --dart_out=./google/type ../../../../../schemas/google/type/*.proto
protoc --proto_path=../../../../../schemas/google/protobuf --dart_out=./google/protobuf ../../../../../schemas/google/protobuf/*.proto
```
