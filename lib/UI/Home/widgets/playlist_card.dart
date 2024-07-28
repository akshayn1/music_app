import 'package:flutter/material.dart';
import 'package:music_player/UI/Playlist/playlist_screen.dart';
import 'package:music_player/UI/core/constants.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard(
      {super.key,
      required this.title,
      required this.count,
      required this.index});
  final String title;
  final int count;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return PlayListScreen(
                    index: index,
                  );
                },
              ));
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 220,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://i.pinimg.com/736x/cd/6c/8f/cd6c8f834fce26428e62a46d2c27357b.jpg")),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16, color: kPrimaryColor),
          ),
          Text(
            '$count',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
