import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/core/constants.dart';
import 'package:music_player/backend/application/favourites/favourites_bloc.dart';
import 'package:music_player/backend/application/player/player_bloc.dart';
import 'package:music_player/backend/models/favourites/fav_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        var index = state.index;
        log('build => PlayerScreen');
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            flexibleSpace: const Center(
              child: Text(
                "Playing Now",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: double.infinity,
                    height: 350,
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: state.musicList.isEmpty
                        ? Image(
                            image: const AssetImage(
                                "Assets/Images/music_disk.png"),
                            color: kPrimaryColor,
                            width: 70,
                            height: 70,
                          )
                        : state.onceArt != false
                            ? QueryArtworkWidget(
                                keepOldArtwork: true,
                                artworkQuality: FilterQuality.medium,
                                id: state.musicList[index].id,
                                type: ArtworkType.AUDIO,
                                artworkHeight: double.infinity,
                                artworkWidth: double.infinity,
                                format: ArtworkFormat.PNG,
                                nullArtworkWidget: Image(
                                  image: const AssetImage(
                                      "Assets/Images/music_disk.png"),
                                  color: kPrimaryColor,
                                  width: 70,
                                  height: 70,
                                ),
                              )
                            : null),
                Text(
                  maxLines: 1,
                  state.musicList.isEmpty
                      ? "Ttile"
                      : state.musicList[index].title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  state.musicList.isEmpty
                      ? "Authour"
                      : state.musicList[index].authour!,
                  style: TextStyle(color: Colors.grey[400], fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Slider(
                  min: const Duration(seconds: 0).inSeconds.toDouble(),
                  max: state.max,
                  value: state.value,
                  onChanged: (newVale) {
                    BlocProvider.of<PlayerBloc>(context)
                        .add(SeekSong(duration: newVale));
                    newVale = newVale;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.musicList.isEmpty
                            ? "00.00"
                            : state.position.toString(),
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                      Text(
                        state.musicList.isEmpty ? "00.00" : state.duration,
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BlocBuilder<FavouritesBloc, FavouritesState>(
                        builder: (context, state2) {
                          try {
                            for (var ele in state2.favList) {
                              if (ele.id == state.musicList[index].id) {
                                BlocProvider.of<FavouritesBloc>(context)
                                    .add(const RefreshUI(equal: true));
                                break;
                              } else {
                                BlocProvider.of<FavouritesBloc>(context)
                                    .add(const RefreshUI(equal: false));
                              }
                            }
                          } catch (e) {
                            BlocProvider.of<FavouritesBloc>(context)
                                .add(const RefreshUI(equal: false));
                          }

                          return IconButton(
                            onPressed: () {
                              final favMusic = FavSongs(
                                id: state.musicList[index].id,
                                title: state.musicList[index].title,
                                authour: state.musicList[index].authour!,
                                uri: state.musicList[index].uri!,
                              );

                              if (state2.equal) {
                                BlocProvider.of<FavouritesBloc>(context)
                                    .add(const RefreshUI(equal: false));
                                BlocProvider.of<FavouritesBloc>(context).add(
                                    DeleteFavs(id: state.musicList[index].id));
                              } else {
                                BlocProvider.of<FavouritesBloc>(context)
                                    .add(const RefreshUI(equal: true));
                                BlocProvider.of<FavouritesBloc>(context)
                                    .add(AddFavs(favList: favMusic));
                              }
                            },
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Color.fromARGB(255, 31, 31, 31))),
                            icon: state2.equal
                                ? const Icon(
                                    CupertinoIcons.heart_fill,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.white,
                                  ),
                          );
                        },
                      ),
                      IconButton(
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(255, 31, 31, 31))),
                          onPressed: () {
                            BlocProvider.of<PlayerBloc>(context).add(Started(
                                uri: state.musicList[index - 1].uri,
                                index: index - 1,
                                musicList: state.musicList));
                          },
                          icon: const ImageIcon(
                            AssetImage("Assets/Icons/rewind.png"),
                            size: 24,
                            color: Colors.white,
                          )),
                      IconButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(kPrimaryColor)),
                        onPressed: () {
                          if (state.isPlaying == true) {
                            BlocProvider.of<PlayerBloc>(context)
                                .add(const PauseSong());
                          } else {
                            BlocProvider.of<PlayerBloc>(context)
                                .add(const ResumeSong());
                          }
                        },
                        icon: SizedBox(
                          height: 70,
                          width: 70,
                          child: state.isPlaying
                              ? const Icon(
                                  CupertinoIcons.pause,
                                  color: Colors.white,
                                  size: 35,
                                )
                              : const Icon(
                                  CupertinoIcons.play_arrow_solid,
                                  color: Colors.white,
                                  size: 35,
                                ),
                        ),
                      ),
                      IconButton(
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(255, 31, 31, 31))),
                          onPressed: () {
                            BlocProvider.of<PlayerBloc>(context).add(Started(
                                uri: state.musicList[index + 1].uri,
                                index: index + 1,
                                musicList: state.musicList));
                          },
                          icon: const ImageIcon(
                            AssetImage("Assets/Icons/fast-forward.png"),
                            size: 20,
                            color: Colors.white,
                          )),
                      IconButton(
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(255, 31, 31, 31))),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.playlist_add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
