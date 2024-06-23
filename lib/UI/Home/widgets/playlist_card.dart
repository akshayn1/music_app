import 'package:flutter/material.dart';
import 'package:music_player/UI/core/constants.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
          const SizedBox(
            height: 10,
          ),
          Text(
            "Paradise",
            style: TextStyle(fontSize: 16, color: kPrimaryColor),
          ),
          const Text(
            "20 Songs",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
