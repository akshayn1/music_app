part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    required int index,
    required bool isPlaying,
  }) = _PlayerState;

  factory PlayerState.initial() =>
      const PlayerState(index: 0, isPlaying: false);
}
