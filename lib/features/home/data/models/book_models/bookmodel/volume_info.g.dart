// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VolumeInfoAdapter extends TypeAdapter<VolumeInfo> {
  @override
  final int typeId = 1;

  @override
  VolumeInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VolumeInfo(
      title: fields[0] as String?,
      authors: (fields[1] as List?)?.cast<String>(),
      publisher: fields[2] as String?,
      publishedDate: fields[3] as String?,
      description: fields[4] as String?,
      pageCount: fields[5] as int?,
      printType: fields[6] as String?,
      categories: (fields[7] as List?)?.cast<String>(),
      averageRating: fields[8] as int?,
      ratingsCount: fields[9] as int?,
      maturityRating: fields[10] as String?,
      allowAnonLogging: fields[11] as bool?,
      contentVersion: fields[12] as String?,
      imageLinks: fields[13] as ImageLinks?,
      language: fields[14] as String?,
      previewLink: fields[15] as String?,
      infoLink: fields[16] as String?,
      canonicalVolumeLink: fields[17] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, VolumeInfo obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.authors)
      ..writeByte(2)
      ..write(obj.publisher)
      ..writeByte(3)
      ..write(obj.publishedDate)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.pageCount)
      ..writeByte(6)
      ..write(obj.printType)
      ..writeByte(7)
      ..write(obj.categories)
      ..writeByte(8)
      ..write(obj.averageRating)
      ..writeByte(9)
      ..write(obj.ratingsCount)
      ..writeByte(10)
      ..write(obj.maturityRating)
      ..writeByte(11)
      ..write(obj.allowAnonLogging)
      ..writeByte(12)
      ..write(obj.contentVersion)
      ..writeByte(13)
      ..write(obj.imageLinks)
      ..writeByte(14)
      ..write(obj.language)
      ..writeByte(15)
      ..write(obj.previewLink)
      ..writeByte(16)
      ..write(obj.infoLink)
      ..writeByte(17)
      ..write(obj.canonicalVolumeLink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VolumeInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
