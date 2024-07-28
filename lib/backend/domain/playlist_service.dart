import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/backend/models/playlist/playlist_model.dart';

Future<void> addPlayList(PlayListModel playlist) async {
  final playListDb = await Hive.openBox<PlayListModel>('playlist_db');

  final key = await playListDb.add(playlist);
  final playlistUpdated = PlayListModel(playlist.musicList, key,
      playListTitle: playlist.playListTitle,
      playListImageUrl: playlist.playListImageUrl);
  playListDb.put(key, playlistUpdated);
}

Future<List<PlayListModel>> loadPlayList() async {
  final playListDb = await Hive.openBox<PlayListModel>('playlist_db');
  final List<PlayListModel> favList = playListDb.values.toList();

  return favList;
}

Future<void> deleteMusicPlayList(int musicId, int key) async {
  final playListDb = await Hive.openBox<PlayListModel>('playlist_db');
  final music = playListDb.get(key);
  final index =
      music!.musicList.indexWhere((musicEle) => musicEle.id == musicId);
  music.musicList.removeAt(index);
  playListDb.put(key, music);
}

Future<void> updateMusicPlaylist(int key, PlayMusicModel musicList) async {
  final playListDb = await Hive.openBox<PlayListModel>('playlist_db');
  final music = playListDb.get(key);
  final mList = music!.musicList;
  mList.add(musicList);

  final updated = PlayListModel(mList, key,
      playListTitle: music.playListTitle,
      playListImageUrl: music.playListImageUrl);
  await playListDb.put(key, updated);
}

Future<void> deletePlayList(int key) async {
  final playListDb = await Hive.openBox<PlayListModel>('playlist_db');
  playListDb.delete(key);
}

Future<void> updatePlaylistInfo(String title, int key, String url) async {
  final playListDb = await Hive.openBox<PlayListModel>('playlist_db');
  final music = playListDb.get(key);

  final updated = PlayListModel(music!.musicList, key,
      playListTitle: title, playListImageUrl: url);
  await playListDb.put(key, updated);
}
