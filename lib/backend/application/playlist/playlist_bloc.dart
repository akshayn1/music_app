import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/backend/domain/playlist_service.dart';
import 'package:music_player/backend/models/playlist/playlist_model.dart';

part 'playlist_event.dart';
part 'playlist_state.dart';
part 'playlist_bloc.freezed.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  PlaylistBloc() : super(PlaylistState.initial()) {
    on<AddPlaylist>((event, emit) async {
      await addPlayList(event.playlist);
    });
    on<UpdatePlayList>(
      (event, emit) {
        updateMusicPlaylist(event.key, event.musicList);
      },
    );
    on<GetPlayList>(
      (event, emit) async {
        final list = await loadPlayList();
        emit(state.copyWith(playlist: list));
      },
    );

    on<RemovePlayList>(
      (event, emit) async {
        await deletePlayList(event.key);
      },
    );
    on<DeleteMusicPlayList>(
      (event, emit) async {
        await deleteMusicPlayList(event.musicId, event.key);
      },
    );
    on<UpdatePlaylistInfo>(
      (event, emit) async {
        await updatePlaylistInfo(event.title, event.key, event.url);
      },
    );
  }
}
