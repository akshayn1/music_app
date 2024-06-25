import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/Musics/widgets/music_tile.dart';
import 'package:music_player/backend/application/music_list/music_list_bloc.dart';

class MusicListItems extends StatelessWidget {
  const MusicListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Tracks",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          BlocBuilder<MusicListBloc, MusicListState>(builder: (context, state) {
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
                : ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                        state.musicList.length,
                        (index) => MusicTile(
                              title: state.musicList[index].displayNameWOExt,
                              author: state.musicList[index].artist,
                            )),
                  );
          })
        ],
      ),
    );
  }
}
