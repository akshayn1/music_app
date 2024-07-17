part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    required int index,
    required bool onceArt,
    required bool isPlaying,
    required bool isFirstSong,
    required String duration,
    required double max,
    required double value,
    required String position,
    required List<PlayerModel> musicList,
  }) = _PlayerState;

  factory PlayerState.initial() => const PlayerState(
        duration: "",
        position: "",
        max: 0,
        value: 0,
        index: 0,
        isPlaying: false,
        onceArt: false,
        musicList: [],
        isFirstSong: false,
      );
}
