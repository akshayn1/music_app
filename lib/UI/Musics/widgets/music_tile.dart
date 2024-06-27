import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:music_player/backend/application/player/player_bloc.dart';
import 'package:music_player/backend/domain/player_service.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
      {super.key,
      required this.title,
      this.author = 'Artist',
      required this.id,
      required this.index,
      required this.uri});

  final String title;
  final String? author;
  final int id;
  final int index;
  final String? uri;

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
                      CupertinoIcons.heart,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  BlocBuilder<PlayerBloc, PlayerState>(
                      builder: (context, state) {
                    return IconButton(
                      onPressed: () {
                        log("${state.index.toString()},${index.toString()}");
                        if (state.index == index) {
                          if (state.isPlaying == true) {
                            BlocProvider.of<PlayerBloc>(context)
                                .add(const StopSong());
                          } else {
                            BlocProvider.of<PlayerBloc>(context)
                                .add(Started(uri: uri, index: index));
                          }
                        } else {
                          if (state.isPlaying == true) {
                            BlocProvider.of<PlayerBloc>(context)
                                .add(const StopSong());
                            BlocProvider.of<PlayerBloc>(context)
                                .add(Started(uri: uri, index: index));
                          } else {
                            BlocProvider.of<PlayerBloc>(context)
                                .add(Started(uri: uri, index: index));
                          }
                        }
                      },
                      icon: state.index == index && state.isPlaying
                          ? const Icon(
                              CupertinoIcons.pause,
                              size: 35,
                              color: Colors.white,
                            )
                          : const Icon(
                              CupertinoIcons.play,
                              size: 35,
                              color: Colors.white,
                            ),
                    );
                  })
                ],
              )
            ],
          )),
    );
  }
}
