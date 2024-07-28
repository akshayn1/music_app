import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/Playlist/playlist_screen.dart';
import 'package:music_player/backend/application/playlist/playlist_bloc.dart';

class PlaylistEditScreen extends StatelessWidget {
  const PlaylistEditScreen(
      {super.key,
      required this.playListKey,
      required this.title,
      required this.playIndex});

  final int playListKey;
  final String title;
  final int playIndex;

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        flexibleSpace: const Center(
          child: Text(
            "Edit Info",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              BlocProvider.of<PlaylistBloc>(context).add(UpdatePlaylistInfo(
                  title: textEditingController.text,
                  key: playListKey,
                  url: ''));
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => PlayListScreen(index: playIndex)));
            },
            child: const Text(
              "Done",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: 270,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      const SizedBox(
                        height: 300,
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://i.pinimg.com/736x/cd/6c/8f/cd6c8f834fce26428e62a46d2c27357b.jpg"),
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: Colors.white.withOpacity(0),
                        ),
                      ),
                      Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit_document),
                          iconSize: 45,
                          color: Colors.grey[400],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Playlist name :",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 230,
                  child: TextFormField(
                    controller: textEditingController,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
