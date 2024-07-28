// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayMusicModelAdapter extends TypeAdapter<PlayMusicModel> {
  @override
  final int typeId = 3;

  @override
  PlayMusicModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayMusicModel(
      id: fields[0] as int,
      title: fields[1] as String,
      authour: fields[2] as String?,
      uri: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PlayMusicModel obj) {
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
      other is PlayMusicModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PlayListModelAdapter extends TypeAdapter<PlayListModel> {
  @override
  final int typeId = 2;

  @override
  PlayListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayListModel(
      (fields[3] as List).cast<PlayMusicModel>(),
      fields[0] as int,
      playListTitle: fields[1] as String,
      playListImageUrl: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PlayListModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.playListTitle)
      ..writeByte(2)
      ..write(obj.playListImageUrl)
      ..writeByte(3)
      ..write(obj.musicList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
