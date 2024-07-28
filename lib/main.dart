import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:music_player/UI/Splash%20Screen/splash_screen.dart';
import 'package:music_player/backend/application/favourites/favourites_bloc.dart';
import 'package:music_player/backend/application/music_list/music_list_bloc.dart';
import 'package:music_player/backend/application/player/player_bloc.dart';
import 'package:music_player/backend/application/playlist/playlist_bloc.dart';
import 'package:music_player/backend/models/favourites/fav_model.dart';
import 'package:music_player/backend/models/playlist/playlist_model.dart';

Future<void> main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized;

  if (!Hive.isAdapterRegistered(FavSongsAdapter().typeId)) {
    Hive.registerAdapter(FavSongsAdapter());
  }
  if (!Hive.isAdapterRegistered(PlayListModelAdapter().typeId)) {
    Hive.registerAdapter(PlayListModelAdapter());
  }
  if (!Hive.isAdapterRegistered(PlayMusicModelAdapter().typeId)) {
    Hive.registerAdapter(PlayMusicModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MusicListBloc(),
          ),
          BlocProvider(
            create: (context) => PlayerBloc(),
          ),
          BlocProvider(
            create: (context) => FavouritesBloc(),
          ),
          BlocProvider(
            create: (context) => PlaylistBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Musics',
          theme: ThemeData(
            splashFactory: NoSplash.splashFactory,
            fontFamily: 'Signika_Negative',
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ));
  }
}
