part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.started({
    required String? uri,
    required int index,
  }) = Started;

  const factory PlayerEvent.stopSong() = StopSong;
  const factory PlayerEvent.pauseSong() = PauseSong;
}
