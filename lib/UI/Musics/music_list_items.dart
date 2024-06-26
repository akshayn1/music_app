import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/Musics/widgets/music_tile.dart';
import 'package:music_player/backend/application/music_list/music_list_bloc.dart';

class MusicListItems extends StatelessWidget {
  const MusicListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MusicListBloc, MusicListState>(
        builder: (context, state) {
      log(state.musicList.length.toString());
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
                log(state.musicList[index].id.toString());
                return MusicTile(
                  id: state.musicList[index].id,
                  title: state.musicList[index].displayNameWOExt,
                  author: state.musicList[index].artist,
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
