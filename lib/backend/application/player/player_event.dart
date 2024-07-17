part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.started({
    required String? uri,
    required int index,
    required List<PlayerModel> musicList,
  }) = Started;

  const factory PlayerEvent.pauseSong() = PauseSong;
  const factory PlayerEvent.refreashPlayer() = RefreashPlayer;
  const factory PlayerEvent.stopSong() = StopSong;
  const factory PlayerEvent.resumeSong() = ResumeSong;
  const factory PlayerEvent.songSlider(
      {required double position,
      required String position2,
      required double duration,
      required String duration2}) = SongSlider;
  const factory PlayerEvent.seekSong({
    required double duration,
  }) = SeekSong;
}
