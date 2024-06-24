import 'package:flutter/material.dart';
import 'package:music_player/UI/Home/home_screen.dart';
import 'package:music_player/UI/Musics/music_list_screen.dart';
import 'package:music_player/UI/Player/player_screen.dart';
import 'package:music_player/UI/User/user_screen.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final _pages = [
    const HomeScreen(),
    const MusicListScreen(),
    PlayerScreen(),
    const UserScreen(),
  ];
  final ValueNotifier<int> indexNotifier = ValueNotifier(3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: ((context, value, child) {
            return _pages[value];
          })),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, newIndex, child) {
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              currentIndex: newIndex,
              unselectedItemColor: Colors.white,
              onTap: (value) {
                indexNotifier.value = value;
              },
              items: const [
                BottomNavigationBarItem(
                  tooltip: 'Home',
                  icon: ImageIcon(AssetImage('Assets/Icons/home.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  tooltip: 'Music',
                  icon: ImageIcon(
                    AssetImage('Assets/Icons/music.png'),
                    size: 30,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('Assets/Icons/vinyl.png')),
                    label: ''),
                BottomNavigationBarItem(
                  tooltip: 'User',
                  icon: ImageIcon(AssetImage('Assets/Icons/user.png')),
                  label: '',
                ),
              ]);
        },
      ),
    );
  }
}
