import 'package:flutter/material.dart';
import 'package:music_player/backend/models/player/player_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlaylistMusicTile extends StatelessWidget {
  const PlaylistMusicTile(
      {super.key,
      required this.title,
      this.author = 'Artist',
      required this.id,
      required this.index,
      required this.uri,
      required this.musicList});

  final String title;
  final String? author;
  final int id;
  final int index;
  final String? uri;
  final List<PlayerModel> musicList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: SizedBox(
          width: double.infinity,
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: QueryArtworkWidget(
                    id: id,
                    type: ArtworkType.AUDIO,
                    nullArtworkWidget: const Image(
                      height: 70,
                      image: AssetImage("Assets/Images/music_art.png"),
                      color: Color.fromARGB(255, 210, 134, 223),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      title,
                      style: const TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      author.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_outline_outlined,
                        color: Colors.white,
                        size: 35,
                      ))
                ],
              )
            ],
          )),
    );
  }
}
