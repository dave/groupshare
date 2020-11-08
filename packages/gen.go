package packages

//go:generate sh -c "protoc --plugin=protoc-gen-dart=/Users/dave/src/protobuf/protoc_plugin/bin/protoc-gen-dart --go_opt=paths=source_relative --proto_path=../packages --proto_path=../../protod/packages --go_out=api/pkg  --dart_out=api/lib  $(find ../packages/api -iname '*.proto')"
//go:generate sh -c "protoc --plugin=protoc-gen-dart=/Users/dave/src/protobuf/protoc_plugin/bin/protoc-gen-dart --go_opt=paths=source_relative --proto_path=../packages --proto_path=../../protod/packages --go_out=auth/pkg --dart_out=auth/lib $(find ../packages/auth -iname '*.proto')"
//go:generate sh -c "protoc --plugin=protoc-gen-dart=/Users/dave/src/protobuf/protoc_plugin/bin/protoc-gen-dart --go_opt=paths=source_relative --proto_path=../packages --proto_path=../../protod/packages --go_out=data/pkg --dart_out=data/lib $(find ../packages/data -iname '*.proto')"
//go:generate sh -c "go run ../../protod/packages/pgen/protodg/*.go -root=. -package=data:data/pkg:data/lib"
