import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/core/constants.dart';
import 'package:music_player/backend/application/player/player_bloc.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final bool first = false;
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        final index = state.index;
        log(index.toString());
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
                    child: state.musicList.isEmpty && first != true
                        ? Image(
                            image: const AssetImage(
                                "Assets/Images/music_disk.png"),
                            color: kPrimaryColor,
                            width: 70,
                            height: 70,
                          )
                        : QueryArtworkWidget(
                            artworkRepeat: ImageRepeat.noRepeat,
                            artworkQuality: FilterQuality.high,
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
                          )),
                Text(
                  maxLines: 1,
                  state.musicList.isEmpty
                      ? "Ttile"
                      : state.musicList[index].displayNameWOExt,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  state.musicList.isEmpty
                      ? "Authour"
                      : state.musicList[index].artist!,
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
                      IconButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 31, 31, 31))),
                          icon: const Icon(
                            CupertinoIcons.heart,
                            color: Colors.white,
                          )),
                      IconButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
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
                                MaterialStatePropertyAll(kPrimaryColor)),
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
                              backgroundColor: MaterialStatePropertyAll(
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
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 31, 31, 31))),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
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
