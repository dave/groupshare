package foo_defs

import "github.com/dave/protod/delta"

func Foo() Foo_type {
	return Foo_type{}
}

type Foo_type struct {
	location []delta.Indexer
}

func NewFoo_type(l []delta.Indexer) Foo_type {
	return Foo_type{location: l}
}
func (b Foo_type) Location_get() []delta.Indexer {
	return b.location
}

type Foo_type_repeated struct {
	location []delta.Indexer
}

func NewFoo_type_repeated(l []delta.Indexer) Foo_type_repeated {
	return Foo_type_repeated{location: l}
}
func (b Foo_type_repeated) Location_get() []delta.Indexer {
	return b.location
}
func (b Foo_type_repeated) Index(i int) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, delta.IndexIndexer(i)))
}
func (b Foo_type) Bar() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppend(b.location, delta.FieldIndexer("bar", 1)))
}
