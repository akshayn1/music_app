import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/backend/domain/player_service.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.initial()) {
    final playSerivce = PlayerService();
    on<Started>((event, emit) {
      playSerivce.play(event.uri);
      emit(PlayerState(index: event.index, isPlaying: true));
    });

    on<StopSong>((event, emit) {
      playSerivce.pause();
      emit(state.copyWith(isPlaying: false));
    });
    on<PauseSong>((event, emit) => null);
  }
}
