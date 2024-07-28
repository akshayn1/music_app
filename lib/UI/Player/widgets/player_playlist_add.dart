import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/backend/application/playlist/playlist_bloc.dart';
import 'package:music_player/backend/models/playlist/playlist_model.dart';

Future<void> addToPlaylist(
    BuildContext context, int id, String title, String authour, String uri) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 46, 45, 45),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: BlocBuilder<PlaylistBloc, PlaylistState>(
              builder: (context, state) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    ValueNotifier<bool> isCheck = ValueNotifier(false);
                    return ListTile(
                        title: Text(
                          state.playlist[index].playListTitle,
                          style: const TextStyle(color: Colors.white),
                        ),
                        trailing: ValueListenableBuilder(
                            valueListenable: isCheck,
                            builder: (context, value, child) {
                              try {
                                for (var ele
                                    in state.playlist[index].musicList) {
                                  if (ele.id == id) {
                                    isCheck.value = true;
                                    break;
                                  } else {
                                    isCheck.value = false;
                                  }
                                }
                              } catch (e) {
                                isCheck.value = false;
                              }

                              return Checkbox(
                                  value: isCheck.value,
                                  onChanged: (bo) {
                                    final musiclist = PlayMusicModel(
                                        id: id,
                                        title: title,
                                        authour: authour,
                                        uri: uri);
                                    if (isCheck.value) {
                                      isCheck.value = false;
                                      BlocProvider.of<PlaylistBloc>(context)
                                          .add(DeleteMusicPlayList(
                                              musicId: id,
                                              key: state.playlist[index].id));
                                    } else {
                                      isCheck.value = true;
                                      BlocProvider.of<PlaylistBloc>(context)
                                          .add(UpdatePlayList(
                                              musicList: musiclist,
                                              key: state.playlist[index].id));
                                    }
                                  });
                            }));
                  },
                  itemCount: state.playlist.length,
                );
              },
            ));
      });
}
