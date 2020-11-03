package packages

//go:generate sh -c "protoc --plugin=protoc-gen-dart=/Users/dave/src/protobuf/protoc_plugin/bin/protoc-gen-dart --go_out=main --go_opt=paths=source_relative --dart_out=main/lib --proto_path=../packages --proto_path=../../protod $(find ../packages/main -iname '*.proto')"
//go:generate sh -c "protoc --plugin=protoc-gen-dart=/Users/dave/src/protobuf/protoc_plugin/bin/protoc-gen-dart --go_out=api --go_opt=paths=source_relative --dart_out=api/lib --proto_path=../packages --proto_path=../../protod $(find ../packages/api -iname '*.proto')"
//go:generate sh -c "protoc --plugin=protoc-gen-dart=/Users/dave/src/protobuf/protoc_plugin/bin/protoc-gen-dart --go_out=auth --go_opt=paths=source_relative --dart_out=auth/lib --proto_path=../packages --proto_path=../../protod $(find ../packages/auth -iname '*.proto')"
//go:generate sh -c "protoc --plugin=protoc-gen-dart=/Users/dave/src/protobuf/protoc_plugin/bin/protoc-gen-dart --go_out=data --go_opt=paths=source_relative --dart_out=data/lib --proto_path=../packages --proto_path=../../protod $(find ../packages/data -iname '*.proto')"
//go:generate sh -c "go run ../../protod/gen/protodg/*.go -proto-root=. -go-root=data -dart-root=data/lib -dart-pkg=data"
