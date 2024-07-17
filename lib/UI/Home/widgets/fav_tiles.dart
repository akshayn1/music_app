import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/UI/core/constants.dart';
import 'package:on_audio_query/on_audio_query.dart';

class FavTiles extends StatelessWidget {
  const FavTiles(
      {super.key,
      required this.id,
      required this.title,
      required this.authour});
  final int id;
  final String title;
  final String authour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: SizedBox(
        height: 80,
        child: ListTile(
          leading: QueryArtworkWidget(
            id: id,
            type: ArtworkType.AUDIO,
            nullArtworkWidget: const Image(
              height: 70,
              image: AssetImage("Assets/Images/music_art.png"),
              color: Color.fromARGB(255, 210, 134, 223),
            ),
          ),
          title: Text(
            overflow: TextOverflow.ellipsis,
            title,
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            authour,
            style: const TextStyle(color: Colors.white),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.play_arrow_solid,
                size: 30,
                color: kPrimaryColor,
              )),
        ),
      ),
    );
  }
}
