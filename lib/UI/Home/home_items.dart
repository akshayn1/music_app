import 'package:flutter/material.dart';
import 'package:music_player/UI/Home/widgets/fav_tiles.dart';
import 'package:music_player/UI/Home/widgets/playlist_card.dart';
import 'package:music_player/UI/core/constants.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Playlist",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(4, (index) => const PlayListCard()),
            ),
          ),
          Text(
            "Favorites",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(8, (index) => FavTiles()),
          )
        ],
      ),
    );
  }
}
