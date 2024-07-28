import 'package:hive_flutter/hive_flutter.dart';
part 'fav_model.g.dart';

@HiveType(typeId: 1)
class FavSongs {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String authour;
  @HiveField(3)
  final String uri;

  FavSongs(
      {required this.id,
      required this.title,
      required this.authour,
      required this.uri});
}
