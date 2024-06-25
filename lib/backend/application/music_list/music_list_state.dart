part of 'music_list_bloc.dart';

@freezed
class MusicListState with _$MusicListState {
  const factory MusicListState({
    required List<SongModel> musicList,
  }) = _Initial;

  factory MusicListState.initial() => const MusicListState(musicList: []);
}
