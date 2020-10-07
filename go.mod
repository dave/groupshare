module github.com/dave/groupshare

go 1.15

require (
	cloud.google.com/go v0.56.0
	cloud.google.com/go/firestore v1.2.0
	github.com/dave/protod v0.0.5
	github.com/golang/protobuf v1.4.2
	google.golang.org/appengine v1.6.6
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013
	google.golang.org/protobuf v1.25.0
)

replace github.com/dave/protod => ./package_links/protod
