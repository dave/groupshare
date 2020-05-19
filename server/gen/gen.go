package gen

//go:generate sh -c "protoc --go_out=../pb --go_opt=paths=source_relative --dart_out='../../lib/pb' --proto_path=../../proto $(find ../../proto -iname '*.proto')"
//go:generate sh -c "go run ../../../protod/delta/protodgen/main.go -in=../../proto -out=../pb -dart=../../lib/pb -dartpkg=groupshare/pb"