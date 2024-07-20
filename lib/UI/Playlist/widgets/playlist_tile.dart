import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/backend/application/player/player_bloc.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlaylistTile extends StatelessWidget {
  const PlaylistTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isStarted = ValueNotifier(false);
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: QueryArtworkWidget(
                            id: 8,
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
                              "title",
                              style: const TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              overflow: TextOverflow.ellipsis,
                              "author.toString()",
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
                                Icons.delete_outline_outlined,
                                color: Colors.red,
                                size: 30,
                              )),
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
                                      BlocProvider.of<PlayerBloc>(context).add(
                                          Started(
                                              uri: "uri",
                                              index: index,
                                              musicList: []));
                                      isStarted.value = true;
                                    }
                                  }
                                } else {
                                  if (state.isPlaying == true) {
                                    BlocProvider.of<PlayerBloc>(context)
                                        .add(const StopSong());
                                    BlocProvider.of<PlayerBloc>(context).add(
                                        Started(
                                            uri: "uri",
                                            index: index,
                                            musicList: []));
                                  } else {
                                    BlocProvider.of<PlayerBloc>(context).add(
                                        Started(
                                            uri: "uri",
                                            index: index,
                                            musicList: []));
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
                          }),
                        ],
                      )
                    ],
                  )),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 0.05,
            );
          },
          itemCount: 10),
    );
  }
}
