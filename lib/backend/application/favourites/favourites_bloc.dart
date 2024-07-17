import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/backend/domain/fav_service.dart';
import 'package:music_player/backend/models/fav_model.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc() : super(FavouritesState.initial()) {
    on<Initilize>((event, emit) async {
      final favList = await loadFavMusic();
      emit(state.copyWith(favList: favList));
    });
    on<AddFavs>((event, emit) async {
      await addFavMusic(event.favList);
      final favList = await loadFavMusic();
      emit(state.copyWith(favList: favList));
    });
    on<DeleteFavs>((event, emit) async {
      await deleteFav(event.id);
      final favList = await loadFavMusic();
      emit(state.copyWith(favList: favList));
    });
    on<RefreshUI>(
      (event, emit) {
        emit(state.copyWith(equal: event.equal));
      },
    );
  }
}
