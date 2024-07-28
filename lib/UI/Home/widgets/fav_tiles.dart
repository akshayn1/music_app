import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/core/constants.dart';
import 'package:music_player/backend/application/player/player_bloc.dart';
import 'package:music_player/backend/models/player/player_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class FavTiles extends StatelessWidget {
  const FavTiles(
      {super.key,
      required this.id,
      required this.title,
      required this.authour,
      required this.index,
      required this.favMusic,
      this.uri});
  final int id;
  final String title;
  final String authour;
  final int index;
  final List<PlayerModel> favMusic;
  final String? uri;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isStarted = ValueNotifier(false);
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
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              authour,
              style: const TextStyle(color: Colors.white),
            ),
            trailing:
                BlocBuilder<PlayerBloc, PlayerState>(builder: (context, state) {
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
                            uri: uri, index: index, musicList: favMusic));
                        isStarted.value = true;
                      }
                    }
                  } else {
                    if (state.isPlaying == true) {
                      BlocProvider.of<PlayerBloc>(context)
                          .add(const StopSong());
                      BlocProvider.of<PlayerBloc>(context).add(
                          Started(uri: uri, index: index, musicList: favMusic));
                    } else {
                      BlocProvider.of<PlayerBloc>(context).add(
                          Started(uri: uri, index: index, musicList: favMusic));
                    }
                  }
                },
                icon: state.index == index && state.isPlaying
                    ? Icon(
                        CupertinoIcons.pause,
                        size: 35,
                        color: kPrimaryColor,
                      )
                    : Icon(
                        CupertinoIcons.play_arrow_solid,
                        size: 30,
                        color: kPrimaryColor,
                      ),
              );
            })),
      ),
    );
  }
}
