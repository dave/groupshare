package gen

//go:generate sh -c "protoc --go_out=../pb --go_opt=paths=source_relative --dart_out=../../lib/pb --proto_path=../../proto --proto_path=../../../protod/pserver/proto --proto_path=../../../protod/proto $(find ../../proto -iname '*.proto')"
//go:generate sh -c "sed -i '' \"s/import '\\(\\.\\.\\/\\)*delta\\/delta\\\\.pb\\\\.dart' as/import 'package:protod\\/delta\\/delta\\.pb\\.dart' as/g\" $(find ../../lib/pb -iname '*.pb.dart')"
//go:generate sh -c "sed -i '' \"s/import '\\(\\.\\.\\/\\)*pserver\\/data\\\\.pb\\\\.dart' as/import 'package:protod\\/pserver\\/data\\.pb\\.dart' as/g\" $(find ../../lib/pb -iname '*.pb.dart')"
//go:generate sh -c "sed -i '' \"s/import '\\(\\.\\.\\/\\)*google\\/protobuf\\//import 'package:protod\\/google\\/protobuf\\//g\" $(find ../../lib/pb -iname '*.pb.dart')"
//go:generate sh -c "go run ../../../protod/gen/protodgen/*.go -in=../../proto -go-root=../pb -dart-root=../../lib/pb -dart-pkg=groupshare/pb"
