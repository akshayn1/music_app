import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/MainPage/main_page.dart';
import 'package:music_player/backend/application/music_list/music_list_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goto();
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('Assets/Images/music app logo (ios).png'),
              height: 230,
            ),
            Text(
              "Musics",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'LilitaOne', fontSize: 40),
            )
          ],
        ),
      )),
    );
  }

  Future<void> goto() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MusicListBloc>(context)
          .add(const MusicListEvent.started());
    });
    await Future.delayed(const Duration(seconds: 3));
    if (context.mounted) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => MainPage())));
    }
  }
}
