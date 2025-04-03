# Generating Classes

Install the dart protoc plugin

```sh
dart pub global activate protoc_plugin
```

Run the following commands from the protobuf directory:

```sh
protoc --proto_path=../../../../../schemas --dart_out=./generated ../../../../../schemas/**.proto
protoc --proto_path=../../../../../schemas/google/type --dart_out=./generated/google/type ../../../../../schemas/google/type/*.proto
protoc --proto_path=../../../../../schemas/google/protobuf --dart_out=./generated/google/protobuf ../../../../../schemas/google/protobuf/*.proto
```
