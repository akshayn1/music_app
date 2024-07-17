part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.initilize() = Initilize;
  const factory FavouritesEvent.addFavs({required FavSongs favList}) = AddFavs;
  const factory FavouritesEvent.deleteFavs({required int id}) = DeleteFavs;

  const factory FavouritesEvent.refreshUI({required bool equal}) = RefreshUI;
}
