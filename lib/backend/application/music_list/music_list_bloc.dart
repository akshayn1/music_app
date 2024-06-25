import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/backend/domain/music_service.dart';
import 'package:music_player/backend/failures/main_failure.dart';
import 'package:on_audio_query/on_audio_query.dart';

part 'music_list_event.dart';
part 'music_list_state.dart';
part 'music_list_bloc.freezed.dart';

class MusicListBloc extends Bloc<MusicListEvent, MusicListState> {
  MusicListBloc() : super(MusicListState.initial()) {
    on<MusicListEvent>((event, emit) async {
      emit(state.copyWith(musicList: []));
      final Either<MainFailure, List<SongModel>> musicList =
          await MusicService().queryMusics();
      emit(musicList.fold((failure) => const MusicListState(musicList: []),
          (success) => MusicListState(musicList: success)));
    });
  }
}
