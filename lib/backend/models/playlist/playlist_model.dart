import 'package:hive_flutter/hive_flutter.dart';

part 'playlist_model.g.dart';

@HiveType(typeId: 3)
class PlayMusicModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? authour;
  @HiveField(3)
  final String? uri;

  PlayMusicModel(
      {required this.id,
      required this.title,
      required this.authour,
      required this.uri});
}

@HiveType(typeId: 2)
class PlayListModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String playListTitle;
  @HiveField(2)
  final String playListImageUrl;
  @HiveField(3)
  final List<PlayMusicModel> musicList;

  PlayListModel(this.musicList, this.id,
      {required this.playListTitle, required this.playListImageUrl});
}
