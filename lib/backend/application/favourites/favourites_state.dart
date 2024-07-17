part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState(
      {required List<FavSongs> favList, required bool equal}) = _Initial;
  factory FavouritesState.initial() =>
      const FavouritesState(favList: [], equal: false);
}
