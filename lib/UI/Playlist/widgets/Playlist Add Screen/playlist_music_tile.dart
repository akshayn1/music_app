import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/backend/application/playlist/playlist_bloc.dart';
import 'package:music_player/backend/models/player/player_model.dart';
import 'package:music_player/backend/models/playlist/playlist_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlaylistMusicTile extends StatelessWidget {
  const PlaylistMusicTile(
      {super.key,
      required this.title,
      this.author = 'Artist',
      required this.id,
      required this.index,
      required this.uri,
      required this.musicList,
      required this.playIndex,
      required this.playListKey});

  final int playListKey;
  final int playIndex;
  final String title;
  final String? author;
  final int id;
  final int index;
  final String? uri;
  final List<PlayMusicModel> musicList;

  @override
  Widget build(BuildContext context) {
    log("Music Tile() =Called()");
    ValueNotifier<bool> isAdded = ValueNotifier(false);
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
                  BlocBuilder<PlaylistBloc, PlaylistState>(
                    builder: (context, state2) {
                      try {
                        log("Music Index $index");
                        log(state2.playlist[playIndex].playListTitle);
                        log('Current Index Music Id ${musicList[index].id}');
                        for (var ele in state2.playlist[playIndex].musicList) {
                          log('Music Id From PlayList ${ele.id}');
                          if (ele.id == musicList[index].id) {
                            log("Item Found");
                            isAdded.value = true;
                            break;
                          } else {
                            log("Item Not Found");
                            isAdded.value = false;
                          }
                        }
                        log("****************");
                      } catch (e) {
                        log("Item is empty");
                        isAdded.value = false;
                      }
                      return ValueListenableBuilder(
                        valueListenable: isAdded,
                        builder: (context, value, child) {
                          return IconButton(
                              onPressed: () {
                                log(playListKey.toString());
                                log("equal bool : ${isAdded.value}");
                                final musiclist = PlayMusicModel(
                                    id: id,
                                    title: title,
                                    authour: author,
                                    uri: uri);
                                if (value) {
                                  log("Item is removed");
                                  isAdded.value = false;
                                  BlocProvider.of<PlaylistBloc>(context).add(
                                      DeleteMusicPlayList(
                                          musicId: id, key: playListKey));
                                } else {
                                  log("Item is added");
                                  // BlocProvider.of<PlaylistBloc>(context)
                                  //     .add(const RefreshPlayList(isEqual: true));
                                  isAdded.value = true;
                                  BlocProvider.of<PlaylistBloc>(context).add(
                                      UpdatePlayList(
                                          musicList: musiclist,
                                          key: playListKey));
                                }
                              },
                              icon: value
                                  ? const Icon(
                                      Icons.remove_circle_outline,
                                      color: Colors.red,
                                      size: 35,
                                    )
                                  : const Icon(
                                      Icons.add_circle_outline_outlined,
                                      color: Colors.white,
                                      size: 35,
                                    ));
                        },
                      );
                    },
                  )
                ],
              )
            ],
          )),
    );
  }
}
