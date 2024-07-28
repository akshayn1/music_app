import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/Playlist/widgets/Playlist%20Add%20Screen/playlist_music_tile.dart';
import 'package:music_player/backend/application/music_list/music_list_bloc.dart';
import 'package:music_player/backend/models/playlist/playlist_model.dart';

class PlayListAddItems extends StatelessWidget {
  const PlayListAddItems(
      {super.key, required this.playIndex, required this.playListKey});
  final int playIndex;
  final int playListKey;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MusicListBloc, MusicListState>(
        builder: (context, state) {
      List<PlayMusicModel> musicList = state.musicList.map((music) {
        return PlayMusicModel(
            id: music.id,
            title: music.displayNameWOExt,
            authour: music.artist,
            uri: music.uri);
      }).toList();
      return state.musicList.isEmpty
          ? const Center(
              child: Text(
                "No Music is Founded",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return PlaylistMusicTile(
                  playListKey: playListKey,
                  playIndex: playIndex,
                  id: state.musicList[index].id,
                  title: state.musicList[index].displayNameWOExt,
                  author: state.musicList[index].artist,
                  index: index,
                  uri: state.musicList[index].uri,
                  musicList: musicList,
                );
              },
              separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[700],
                    thickness: 0.5,
                  ),
              itemCount: state.musicList.length);
    });
  }
}
