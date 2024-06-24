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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(
                    child: TextField(
                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                          icon: const Icon(CupertinoIcons.search),
                          iconColor: Colors.grey[600]),
                    ),
                  ),
                ),
              ),
              const MusicListItems()
            ],
          ),
        ),
      ),
    );
  }
}
