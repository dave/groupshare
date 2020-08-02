import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/registry.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:protobuf/protobuf.dart';
import 'package:protod/pserver/pserver.dart';

setupHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ItemAdapter<Share>(0, types));
}

class ProtoAdapter<T extends GeneratedMessage> extends TypeAdapter<T> {
  // TODO: ProtoAdapter is unused now... remove it?

  @override
  final int typeId;
  ProtoAdapter(this.typeId);

  @override
  T read(BinaryReader reader) {
    final type = reader.readString(); // 0
    final bytes = reader.readByteList(); // 1
    T value = types.lookup(type).createEmptyInstance();
    unpackIntoHelper<T>(bytes, value, 'type.googleapis.com/$type');
    return value;
  }

  @override
  void write(BinaryWriter writer, T obj) {
    writer.writeString('${obj.info_.qualifiedMessageName}'); // 0
    writer.writeByteList(obj.writeToBuffer()); // 1
  }
}
