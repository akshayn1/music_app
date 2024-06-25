part of 'music_list_bloc.dart';

@freezed
class MusicListEvent with _$MusicListEvent {
  const factory MusicListEvent.started() = _Started;
}
