///
//  Generated code. Do not modify.
//  source: protod/delta.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/any.pb.dart' as $1;

import 'delta.pbenum.dart';

export 'delta.pbenum.dart';

class Delta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Delta', package: const $pb.PackageName('delta'), createEmptyInstance: create)
    ..e<Delta_Type>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: Delta_Type.Edit, valueOf: Delta_Type.valueOf, enumValues: Delta_Type.values)
    ..pc<Locator>(2, 'location', $pb.PbFieldType.PM, subBuilder: Locator.create)
    ..aOM<$1.Any>(3, 'value', subBuilder: $1.Any.create)
    ..hasRequiredFields = false
  ;

  Delta._() : super();
  factory Delta() => create();
  factory Delta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Delta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Delta clone() => Delta()..mergeFromMessage(this);
  Delta copyWith(void Function(Delta) updates) => super.copyWith((message) => updates(message as Delta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Delta create() => Delta._();
  Delta createEmptyInstance() => create();
  static $pb.PbList<Delta> createRepeated() => $pb.PbList<Delta>();
  @$core.pragma('dart2js:noInline')
  static Delta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Delta>(create);
  static Delta _defaultInstance;

  @$pb.TagNumber(1)
  Delta_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Delta_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Locator> get location => $_getList(1);

  @$pb.TagNumber(3)
  $1.Any get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($1.Any v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  $1.Any ensureValue() => $_ensure(2);
}

enum Locator_V {
  field_1, 
  index_, 
  key, 
  notSet
}

class Locator extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Locator_V> _Locator_VByTag = {
    1 : Locator_V.field_1,
    2 : Locator_V.index_,
    3 : Locator_V.key,
    0 : Locator_V.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Locator', package: const $pb.PackageName('delta'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Field>(1, 'field', subBuilder: Field.create)
    ..aInt64(2, 'index')
    ..aOM<Key>(3, 'key', subBuilder: Key.create)
    ..hasRequiredFields = false
  ;

  Locator._() : super();
  factory Locator() => create();
  factory Locator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Locator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Locator clone() => Locator()..mergeFromMessage(this);
  Locator copyWith(void Function(Locator) updates) => super.copyWith((message) => updates(message as Locator));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Locator create() => Locator._();
  Locator createEmptyInstance() => create();
  static $pb.PbList<Locator> createRepeated() => $pb.PbList<Locator>();
  @$core.pragma('dart2js:noInline')
  static Locator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Locator>(create);
  static Locator _defaultInstance;

  Locator_V whichV() => _Locator_VByTag[$_whichOneof(0)];
  void clearV() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Field get field_1 => $_getN(0);
  @$pb.TagNumber(1)
  set field_1(Field v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => clearField(1);
  @$pb.TagNumber(1)
  Field ensureField_1() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get index => $_getI64(1);
  @$pb.TagNumber(2)
  set index($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);

  @$pb.TagNumber(3)
  Key get key => $_getN(2);
  @$pb.TagNumber(3)
  set key(Key v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);
  @$pb.TagNumber(3)
  Key ensureKey() => $_ensure(2);
}

enum Key_V {
  bool_1, 
  int32, 
  int64, 
  uint32, 
  uint64, 
  string, 
  notSet
}

class Key extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Key_V> _Key_VByTag = {
    1 : Key_V.bool_1,
    2 : Key_V.int32,
    3 : Key_V.int64,
    4 : Key_V.uint32,
    5 : Key_V.uint64,
    6 : Key_V.string,
    0 : Key_V.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Key', package: const $pb.PackageName('delta'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOB(1, 'bool')
    ..a<$core.int>(2, 'int32', $pb.PbFieldType.O3)
    ..aInt64(3, 'int64')
    ..a<$core.int>(4, 'uint32', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(5, 'uint64', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(6, 'string')
    ..hasRequiredFields = false
  ;

  Key._() : super();
  factory Key() => create();
  factory Key.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Key.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Key clone() => Key()..mergeFromMessage(this);
  Key copyWith(void Function(Key) updates) => super.copyWith((message) => updates(message as Key));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Key create() => Key._();
  Key createEmptyInstance() => create();
  static $pb.PbList<Key> createRepeated() => $pb.PbList<Key>();
  @$core.pragma('dart2js:noInline')
  static Key getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Key>(create);
  static Key _defaultInstance;

  Key_V whichV() => _Key_VByTag[$_whichOneof(0)];
  void clearV() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get bool_1 => $_getBF(0);
  @$pb.TagNumber(1)
  set bool_1($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBool_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearBool_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get int32 => $_getIZ(1);
  @$pb.TagNumber(2)
  set int32($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInt32() => $_has(1);
  @$pb.TagNumber(2)
  void clearInt32() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get int64 => $_getI64(2);
  @$pb.TagNumber(3)
  set int64($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInt64() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt64() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get uint32 => $_getIZ(3);
  @$pb.TagNumber(4)
  set uint32($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUint32() => $_has(3);
  @$pb.TagNumber(4)
  void clearUint32() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get uint64 => $_getI64(4);
  @$pb.TagNumber(5)
  set uint64($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUint64() => $_has(4);
  @$pb.TagNumber(5)
  void clearUint64() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get string => $_getSZ(5);
  @$pb.TagNumber(6)
  set string($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasString() => $_has(5);
  @$pb.TagNumber(6)
  void clearString() => clearField(6);
}

class Field extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Field', package: const $pb.PackageName('delta'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..a<$core.int>(2, 'number', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Field._() : super();
  factory Field() => create();
  factory Field.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Field.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Field clone() => Field()..mergeFromMessage(this);
  Field copyWith(void Function(Field) updates) => super.copyWith((message) => updates(message as Field));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Field create() => Field._();
  Field createEmptyInstance() => create();
  static $pb.PbList<Field> createRepeated() => $pb.PbList<Field>();
  @$core.pragma('dart2js:noInline')
  static Field getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Field>(create);
  static Field _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}

enum Scalar_V {
  double_1, 
  float, 
  int32, 
  int64, 
  uint32, 
  uint64, 
  sint32, 
  sint64, 
  fixed32, 
  fixed64, 
  sfixed32, 
  sfixed64, 
  bool_13, 
  string, 
  bytes, 
  diff, 
  notSet
}

class Scalar extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Scalar_V> _Scalar_VByTag = {
    1 : Scalar_V.double_1,
    2 : Scalar_V.float,
    3 : Scalar_V.int32,
    4 : Scalar_V.int64,
    5 : Scalar_V.uint32,
    6 : Scalar_V.uint64,
    7 : Scalar_V.sint32,
    8 : Scalar_V.sint64,
    9 : Scalar_V.fixed32,
    10 : Scalar_V.fixed64,
    11 : Scalar_V.sfixed32,
    12 : Scalar_V.sfixed64,
    13 : Scalar_V.bool_13,
    14 : Scalar_V.string,
    15 : Scalar_V.bytes,
    16 : Scalar_V.diff,
    0 : Scalar_V.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Scalar', package: const $pb.PackageName('delta'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
    ..a<$core.double>(1, 'double', $pb.PbFieldType.OD)
    ..a<$core.double>(2, 'float', $pb.PbFieldType.OF)
    ..a<$core.int>(3, 'int32', $pb.PbFieldType.O3)
    ..aInt64(4, 'int64')
    ..a<$core.int>(5, 'uint32', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(6, 'uint64', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(7, 'sint32', $pb.PbFieldType.OS3)
    ..a<$fixnum.Int64>(8, 'sint64', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(9, 'fixed32', $pb.PbFieldType.OF3)
    ..a<$fixnum.Int64>(10, 'fixed64', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(11, 'sfixed32', $pb.PbFieldType.OSF3)
    ..a<$fixnum.Int64>(12, 'sfixed64', $pb.PbFieldType.OSF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(13, 'bool')
    ..aOS(14, 'string')
    ..a<$core.List<$core.int>>(15, 'bytes', $pb.PbFieldType.OY)
    ..aOS(16, 'diff')
    ..hasRequiredFields = false
  ;

  Scalar._() : super();
  factory Scalar() => create();
  factory Scalar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scalar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Scalar clone() => Scalar()..mergeFromMessage(this);
  Scalar copyWith(void Function(Scalar) updates) => super.copyWith((message) => updates(message as Scalar));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Scalar create() => Scalar._();
  Scalar createEmptyInstance() => create();
  static $pb.PbList<Scalar> createRepeated() => $pb.PbList<Scalar>();
  @$core.pragma('dart2js:noInline')
  static Scalar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scalar>(create);
  static Scalar _defaultInstance;

  Scalar_V whichV() => _Scalar_VByTag[$_whichOneof(0)];
  void clearV() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.double get double_1 => $_getN(0);
  @$pb.TagNumber(1)
  set double_1($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDouble_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearDouble_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get float => $_getN(1);
  @$pb.TagNumber(2)
  set float($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFloat() => $_has(1);
  @$pb.TagNumber(2)
  void clearFloat() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get int32 => $_getIZ(2);
  @$pb.TagNumber(3)
  set int32($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInt32() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt32() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get int64 => $_getI64(3);
  @$pb.TagNumber(4)
  set int64($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInt64() => $_has(3);
  @$pb.TagNumber(4)
  void clearInt64() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get uint32 => $_getIZ(4);
  @$pb.TagNumber(5)
  set uint32($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUint32() => $_has(4);
  @$pb.TagNumber(5)
  void clearUint32() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get uint64 => $_getI64(5);
  @$pb.TagNumber(6)
  set uint64($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUint64() => $_has(5);
  @$pb.TagNumber(6)
  void clearUint64() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get sint32 => $_getIZ(6);
  @$pb.TagNumber(7)
  set sint32($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSint32() => $_has(6);
  @$pb.TagNumber(7)
  void clearSint32() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get sint64 => $_getI64(7);
  @$pb.TagNumber(8)
  set sint64($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSint64() => $_has(7);
  @$pb.TagNumber(8)
  void clearSint64() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get fixed32 => $_getIZ(8);
  @$pb.TagNumber(9)
  set fixed32($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFixed32() => $_has(8);
  @$pb.TagNumber(9)
  void clearFixed32() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get fixed64 => $_getI64(9);
  @$pb.TagNumber(10)
  set fixed64($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFixed64() => $_has(9);
  @$pb.TagNumber(10)
  void clearFixed64() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get sfixed32 => $_getIZ(10);
  @$pb.TagNumber(11)
  set sfixed32($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSfixed32() => $_has(10);
  @$pb.TagNumber(11)
  void clearSfixed32() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get sfixed64 => $_getI64(11);
  @$pb.TagNumber(12)
  set sfixed64($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSfixed64() => $_has(11);
  @$pb.TagNumber(12)
  void clearSfixed64() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get bool_13 => $_getBF(12);
  @$pb.TagNumber(13)
  set bool_13($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBool_13() => $_has(12);
  @$pb.TagNumber(13)
  void clearBool_13() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get string => $_getSZ(13);
  @$pb.TagNumber(14)
  set string($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasString() => $_has(13);
  @$pb.TagNumber(14)
  void clearString() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get bytes => $_getN(14);
  @$pb.TagNumber(15)
  set bytes($core.List<$core.int> v) { $_setBytes(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasBytes() => $_has(14);
  @$pb.TagNumber(15)
  void clearBytes() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get diff => $_getSZ(15);
  @$pb.TagNumber(16)
  set diff($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasDiff() => $_has(15);
  @$pb.TagNumber(16)
  void clearDiff() => clearField(16);
}

