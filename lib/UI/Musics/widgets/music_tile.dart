import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:music_player/backend/application/player/player_bloc.dart';
import 'package:music_player/backend/models/player/player_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
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
    final ValueNotifier<bool> isStarted = ValueNotifier(false);
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
                          fontSize: 14,
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
                  BlocBuilder<PlayerBloc, PlayerState>(
                      builder: (context, state) {
                    return IconButton(
                      onPressed: () {
                        if (state.index == index) {
                          if (state.isPlaying == true) {
                            BlocProvider.of<PlayerBloc>(context)
                                .add(const PauseSong());
                          } else {
                            if (state.isFirstSong) {
                              BlocProvider.of<PlayerBloc>(context)
                                  .add(const ResumeSong());
                            } else {
                              BlocProvider.of<PlayerBloc>(context).add(Started(
                                  uri: uri,
                                  index: index,
                                  musicList: musicList));
                              isStarted.value = true;
                            }
                          }
                        } else {
                          if (state.isPlaying == true) {
                            BlocProvider.of<PlayerBloc>(context)
                                .add(const StopSong());
                            BlocProvider.of<PlayerBloc>(context).add(Started(
                                uri: uri, index: index, musicList: musicList));
                          } else {
                            BlocProvider.of<PlayerBloc>(context).add(Started(
                                uri: uri, index: index, musicList: musicList));
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
