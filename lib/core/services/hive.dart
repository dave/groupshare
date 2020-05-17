import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/registry.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:protobuf/protobuf.dart';

setupHive() async {
  await Hive.initFlutter();
  // for each data object type
  Hive.registerAdapter(ProtoAdapter<Share>(1, 'data'));
  locator.registerSingleton<Box<Share>>(
    await Hive.openBox<Share>('shares'),
  );
}

class ProtoAdapter<T extends GeneratedMessage> extends TypeAdapter<T> {
  @override
  final int typeId;
  final String package;
  ProtoAdapter(this.typeId, this.package);

  @override
  T read(BinaryReader reader) {
    final bytes = reader.readByteList();
    final typeName = '$package.${T.toString()}';
    final info = types.lookup(typeName);
    T value = info.createEmptyInstance();
    unpackIntoHelper<T>(
      bytes,
      value,
      'type.googleapis.com/$typeName',
    );
    return value;
  }

  @override
  void write(BinaryWriter writer, T obj) {
    writer.writeByteList((obj as GeneratedMessage).writeToBuffer());
  }
}
