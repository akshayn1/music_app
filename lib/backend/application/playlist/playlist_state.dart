part of 'playlist_bloc.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState({
    required List<PlayListModel> playlist,
    required bool isEqual,
  }) = _PlaylistState;

  factory PlaylistState.initial() =>
      const PlaylistState(playlist: [], isEqual: false);
}
