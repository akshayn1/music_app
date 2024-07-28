import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/backend/models/favourites/fav_model.dart';

Future<void> addFavMusic(FavSongs song) async {
  final favDb = await Hive.openBox<FavSongs>('favourites_db');
  await favDb.add(song);
}

Future<List<FavSongs>> loadFavMusic() async {
  final favDb = await Hive.openBox<FavSongs>('favourites_db');
  final List<FavSongs> favList = favDb.values.toList();
  return favList;
}

Future<void> deleteFav(int id) async {
  final favDb = await Hive.openBox<FavSongs>('favourites_db');
  final item = favDb.values.firstWhere((ele) => ele.id == id);
  final key = favDb.keyAt(favDb.values.toList().indexOf(item));
  await favDb.delete(key);
}
