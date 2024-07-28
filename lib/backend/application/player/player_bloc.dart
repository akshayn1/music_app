import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/backend/domain/player_service.dart';
import 'package:music_player/backend/models/player/player_model.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.initial()) {
    final playSerivce = PlayerService();

    final ValueNotifier<List<PlayerModel>> musics = ValueNotifier([]);
    final ValueNotifier<int> index = ValueNotifier(0);
    playSerivce.audioPlayer.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        try {
          add(Started(
              uri: musics.value[index.value + 1].uri,
              index: index.value + 1,
              musicList: musics.value));
        } catch (e) {
          add(const StopSong());
        }
      }
    });

    playSerivce.audioPlayer.durationStream.listen(
      (duration) {
        playSerivce.audioPlayer.positionStream.listen((position) {
          add(SongSlider(
              duration2: formatDuration(duration!),
              duration: duration.inSeconds.toDouble(),
              position: position.inSeconds.toDouble(),
              position2: formatDuration(position)));
        });
      },
    );

    on<Started>((event, emit) {
      playSerivce.play(event.uri);
      emit(PlayerState(
          index: event.index,
          isPlaying: true,
          duration: formatDuration(playSerivce.duration.value),
          position: "0",
          max: playSerivce.max.value,
          value: 0,
          onceArt: false,
          musicList: event.musicList,
          isFirstSong: true));
      musics.value = event.musicList;
      index.value = event.index;
    });

    on<PauseSong>((event, emit) {
      playSerivce.pause();
      emit(state.copyWith(isPlaying: false));
    });
    on<SeekSong>((event, emit) {
      playSerivce.seekDuration(event.duration.toInt());
    });
    on<StopSong>((event, emit) {
      playSerivce.stop();
      emit(state.copyWith(isPlaying: false));
    });
    on<ResumeSong>((event, emit) {
      playSerivce.resume();
      emit(state.copyWith(isPlaying: true));
    });
    on<SongSlider>((event, emit) {
      emit(state.copyWith(
          onceArt: true,
          value: event.position,
          position: event.position2,
          duration: event.duration2,
          max: event.duration));
    });
    on<RefreashPlayer>(
      (event, emit) => emit(state.copyWith()),
    );
  }

  String formatDuration(Duration duration) {
    final min = duration.inMinutes.remainder(60);
    final sec = duration.inSeconds.remainder(60);
    return '${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';
  }
}
