// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookmodelAdapter extends TypeAdapter<Bookmodel> {
  @override
  final int typeId = 0;

  @override
  Bookmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bookmodel(
      price: fields[6] as double,
      kind: fields[1] as String?,
      id: fields[2] as String?,
      etag: fields[3] as String?,
      selfLink: fields[4] as String?,
      volumeInfo: fields[5] as VolumeInfo?,
      quantity: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Bookmodel obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.kind)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.etag)
      ..writeByte(4)
      ..write(obj.selfLink)
      ..writeByte(5)
      ..write(obj.volumeInfo)
      ..writeByte(6)
      ..write(obj.price)
      ..writeByte(7)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
