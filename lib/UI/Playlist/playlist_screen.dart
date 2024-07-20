import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/UI/Playlist/widgets/Playlist%20Add%20Screen/playlist_add_screen.dart';
import 'package:music_player/UI/Playlist/widgets/playlist_edit_screen.dart';
import 'package:music_player/UI/Playlist/widgets/playlist_tile.dart';

class PlayListScreen extends StatelessWidget {
  const PlayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                "Playlist",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.red),
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/cd/6c/8f/cd6c8f834fce26428e62a46d2c27357b.jpg")),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 430,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 15),
                          child: Text(
                            "PlayList Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Divider(
                          thickness: 0.1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const PlaylistEditScreen()));
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.clear_all,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete_outline_rounded,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            const SizedBox(
                              width: 140,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const PlayListAddScreen();
                                  }));
                                },
                                icon: const Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.green,
                                  size: 30,
                                )),
                          ],
                        ),
                        const Divider(
                          thickness: 0.3,
                        ),
                        PlaylistTile()
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
