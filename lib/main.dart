import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/Splash%20Screen/splash_screen.dart';
import 'package:music_player/backend/application/music_list/music_list_bloc.dart';
import 'package:music_player/backend/application/player/player_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;

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
