package main

// data objects - these need the protodgen post-processor to generate operation code:
//go:generate sh -c "protoc --go_out=. --go_opt=paths=source_relative --dart_out=../repositories/data_repository/lib/pb --proto_path=../proto --proto_path=../../protod $(find ../proto/data -iname '*.proto')"
//go:generate sh -c "go run ../../protod/gen/protodgen/*.go -in=../proto -go-root=. -dart-root=../repositories/data_repository/lib/pb -dart-pkg=data_repository/pb"

// messages - used for communicating between client and server:
//go:generate sh -c "protoc --go_out=. --go_opt=paths=source_relative --dart_out=../lib/pb --proto_path=../proto --proto_path=../../protod $(find ../proto/messages -iname '*.proto')"

// auth repository messages:
//go:generate sh -c "protoc --go_out=. --go_opt=paths=source_relative --dart_out=../repositories/auth_repository/lib/pb --proto_path=../proto --proto_path=../../protod $(find ../proto/auth -iname '*.proto')"

// api repository messages:
//go:generate sh -c "protoc --go_out=. --go_opt=paths=source_relative --dart_out=../repositories/api_repository/lib/pb --proto_path=../proto --proto_path=../../protod $(find ../proto/api -iname '*.proto')"

////go:generate sh -c "sed -i '' \"s/import '\\(\\.\\.\\/\\)*delta\\/delta\\\\.pb\\\\.dart' as/import 'package:protod\\/delta\\/delta\\.pb\\.dart' as/g\" $(find ../lib/pb -iname '*.pb.dart')"
////go:generate sh -c "sed -i '' \"s/import '\\(\\.\\.\\/\\)*pserver\\/pserver\\\\.pb\\\\.dart' as/import 'package:protod\\/pserver\\/pserver\\.pb\\.dart' as/g\" $(find ../lib/pb -iname '*.pb.dart')"
////go:generate sh -c "sed -i '' \"s/import '\\(\\.\\.\\/\\)*pmsg\\/pmsg\\\\.pb\\\\.dart' as/import 'package:protod\\/pmsg\\/pmsg\\.pb\\.dart' as/g\" $(find ../lib/pb -iname '*.pb.dart')"
////go:generate sh -c "sed -i '' \"s/import '\\(\\.\\.\\/\\)*google\\/protobuf\\//import 'package:protod\\/google\\/protobuf\\//g\" $(find ../lib/pb -iname '*.pb.dart')"
