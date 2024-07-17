// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavSongsAdapter extends TypeAdapter<FavSongs> {
  @override
  final int typeId = 1;

  @override
  FavSongs read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavSongs(
      id: fields[0] as int,
      title: fields[1] as String,
      authour: fields[2] as String,
      uri: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavSongs obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.authour)
      ..writeByte(3)
      ..write(obj.uri);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavSongsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
