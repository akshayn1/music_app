import 'package:flutter/material.dart';
import 'package:music_player/UI/Playlist/widgets/Playlist%20Add%20Screen/playlist_add_items.dart';

class PlayListAddScreen extends StatelessWidget {
  const PlayListAddScreen({super.key});

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
        flexibleSpace: const Center(
          child: Text(
            "Add to Text",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              "Done",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child:
            Padding(padding: EdgeInsets.all(12.0), child: PlayListAddItems()),
      ),
    );
  }
}
