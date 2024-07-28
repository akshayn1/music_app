import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/backend/application/player/player_bloc.dart';
import 'package:music_player/backend/application/playlist/playlist_bloc.dart';
import 'package:music_player/backend/models/player/player_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlaylistTile extends StatelessWidget {
  const PlaylistTile({
    super.key,
    required this.playListIndex,
    required this.playListKey,
  });
  final int playListIndex;
  final int playListKey;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isStarted = ValueNotifier(false);
    return Expanded(
      child: BlocBuilder<PlaylistBloc, PlaylistState>(
        builder: (context, state2) {
          final List<PlayerModel> musicBox =
              state2.playlist[playListIndex].musicList.map((ele) {
            return PlayerModel(
                id: ele.id,
                title: ele.title,
                authour: ele.authour,
                uri: ele.uri);
          }).toList();

          return state2.playlist[playListIndex].musicList.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    final musicList = PlayerModel(
                        id: state2.playlist[playListIndex].musicList[index].id,
                        title: state2
                            .playlist[playListIndex].musicList[index].title,
                        authour: state2
                            .playlist[playListIndex].musicList[index].authour,
                        uri: state2
                            .playlist[playListIndex].musicList[index].uri);
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
                                    id: musicList.id,
                                    type: ArtworkType.AUDIO,
                                    nullArtworkWidget: const Image(
                                      height: 70,
                                      image: AssetImage(
                                          "Assets/Images/music_art.png"),
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
                                      musicList.title,
                                      style: const TextStyle(
                                          fontSize: 19,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      overflow: TextOverflow.ellipsis,
                                      musicList.authour!,
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
                                      onPressed: () {
                                        BlocProvider.of<PlaylistBloc>(context)
                                            .add(DeleteMusicPlayList(
                                                musicId: musicList.id,
                                                key: playListKey));
                                      },
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
                                              BlocProvider.of<PlayerBloc>(
                                                      context)
                                                  .add(const ResumeSong());
                                            } else {
                                              BlocProvider.of<PlayerBloc>(
                                                      context)
                                                  .add(Started(
                                                      uri: musicList.uri,
                                                      index: index,
                                                      musicList: musicBox));
                                              isStarted.value = true;
                                            }
                                          }
                                        } else {
                                          if (state.isPlaying == true) {
                                            BlocProvider.of<PlayerBloc>(context)
                                                .add(const StopSong());
                                            BlocProvider.of<PlayerBloc>(context)
                                                .add(Started(
                                                    uri: musicList.uri,
                                                    index: index,
                                                    musicList: musicBox));
                                          } else {
                                            BlocProvider.of<PlayerBloc>(context)
                                                .add(Started(
                                                    uri: musicList.uri,
                                                    index: index,
                                                    musicList: musicBox));
                                          }
                                        }
                                      },
                                      icon: state.index == index &&
                                              state.isPlaying
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
                  itemCount: state2.playlist[playListIndex].musicList.length)
              : const Text("Your music will apear here!!");
        },
      ),
    );
  }
}
