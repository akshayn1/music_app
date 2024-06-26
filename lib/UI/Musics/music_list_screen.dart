import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/UI/Musics/music_list_items.dart';

class MusicListScreen extends StatelessWidget {
  const MusicListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        flexibleSpace: const Center(
          child: Text(
            "My music library",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(padding: EdgeInsets.all(12.0), child: MusicListItems()),
      ),
    );
  }
}
