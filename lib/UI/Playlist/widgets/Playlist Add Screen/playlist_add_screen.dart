import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/Playlist/playlist_screen.dart';
import 'package:music_player/UI/Playlist/widgets/Playlist%20Add%20Screen/playlist_add_items.dart';
import 'package:music_player/backend/application/playlist/playlist_bloc.dart';

class PlayListAddScreen extends StatelessWidget {
  const PlayListAddScreen(
      {super.key,
      required this.playIndex,
      required this.playlistname,
      required this.playListKey});

  final int playIndex;
  final String playlistname;
  final int playListKey;

  @override
  Widget build(BuildContext context) {
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
        flexibleSpace: Center(
          child: Text(
            "Add to $playlistname",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              BlocProvider.of<PlaylistBloc>(context).add(const GetPlayList());

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
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: PlayListAddItems(
              playListKey: playListKey,
              playIndex: playIndex,
            )),
      ),
    );
  }
}
