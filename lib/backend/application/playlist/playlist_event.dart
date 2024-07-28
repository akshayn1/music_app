part of 'playlist_bloc.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.getPlayList() = GetPlayList;
  const factory PlaylistEvent.addPlayList({required PlayListModel playlist}) =
      AddPlaylist;
  const factory PlaylistEvent.removePlayList({required int key}) =
      RemovePlayList;
  const factory PlaylistEvent.updatePlayList(
      {required PlayMusicModel musicList, required int key}) = UpdatePlayList;
  const factory PlaylistEvent.deleteMusicPlayList(
      {required int musicId, required int key}) = DeleteMusicPlayList;
  const factory PlaylistEvent.updatePlaylistInfo(
      {required String title,
      required int key,
      required String url}) = UpdatePlaylistInfo;
}
