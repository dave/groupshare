module github.com/dave/groupshare

go 1.14

require (
	cloud.google.com/go/firestore v1.2.0
	github.com/dave/jennifer v1.4.0
	github.com/dave/protod v0.0.1
	github.com/golang/protobuf v1.4.2
	github.com/sergi/go-diff v1.1.0 // indirect
	github.com/yoheimuta/go-protoparser/v4 v4.2.0
	golang.org/x/mobile v0.0.0-20200329125638-4c31acba0007 // indirect
	google.golang.org/api v0.28.0
	google.golang.org/appengine v1.6.6
	google.golang.org/grpc v1.28.0
	google.golang.org/protobuf v1.25.0
)

replace github.com/dave/protod v0.0.1 => ../protod
