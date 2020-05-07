abstract class Locator {
  List<Indexer> location;
  Locator(this.location);
}

class String_scalar extends Locator {
  String_scalar(List<Indexer> location) : super(location);
}

class Int32_scalar extends Locator {
  Int32_scalar(List<Indexer> location) : super(location);
}

class Int64_scalar extends Locator {
  Int64_scalar(List<Indexer> location) : super(location);
}

abstract class Indexer {}

class Field extends Indexer {
  String name;
  int number;
  Field(this.name, this.number);
}

class Index extends Indexer {
  int index;
  Index(this.index);
}

class Key extends Indexer {
  String key;
  Key(this.key);
}

/*

func CopyAndAppend(in []Indexer, v Indexer) []Indexer {
	out := make([]Indexer, len(in)+1)
	copy(out, in)
	out[len(out)-1] = v
	return out
}

 */
