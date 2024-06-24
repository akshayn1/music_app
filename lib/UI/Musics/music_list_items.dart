import 'package:flutter/material.dart';
import 'package:music_player/UI/Musics/widgets/music_tile.dart';

class MusicListItems extends StatelessWidget {
  const MusicListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Tracks",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(7, (index) => const MusicTile()),
          )
        ],
      ),
    );
  }
}
