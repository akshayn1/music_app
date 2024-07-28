import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:music_player/backend/application/playlist/playlist_bloc.dart';
import 'package:music_player/backend/models/playlist/playlist_model.dart';

Future playListAddSheet(BuildContext context) {
  TextEditingController _textController = TextEditingController();
  return showDialog(
      context: context,
      builder: (context) => Stack(
            children: [
              Positioned.fill(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.white.withOpacity(0),
                ),
              )),
              Center(
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 45, 45),
                        borderRadius: BorderRadius.circular(20)),
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                clipBehavior: Clip.hardEdge,
                                height: 100,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  children: [
                                    const SizedBox(
                                      height: 300,
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://i.pinimg.com/736x/cd/6c/8f/cd6c8f834fce26428e62a46d2c27357b.jpg"),
                                      ),
                                    ),
                                    BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 5, sigmaY: 5),
                                      child: Container(
                                        color: Colors.white.withOpacity(0),
                                      ),
                                    ),
                                    Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.edit_document),
                                        iconSize: 45,
                                        color: Colors.grey[400],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Center(
                            child: Text(
                              "Cover Photo",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Playlist name :",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                height: 50,
                                width: 200,
                                child: TextFormField(
                                  controller: _textController,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 47, 45, 45),
                                    side: const BorderSide(
                                        color: Colors.white, width: 2),
                                  ),
                                  onPressed: () {
                                    final playlist = PlayListModel([], 0,
                                        playListTitle: _textController.text,
                                        playListImageUrl: '');
                                    BlocProvider.of<PlaylistBloc>(context)
                                        .add(AddPlaylist(playlist: playlist));
                                    BlocProvider.of<PlaylistBloc>(context)
                                        .add(const GetPlayList());
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Add",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 47, 45, 45),
                                  side: const BorderSide(
                                      color: Colors.white, width: 2),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  "Back",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ));
}

int datetime() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('ddMMyyHHmmss').format(now);
  int dateTimeInt = int.parse(formattedDate);

  print(dateTimeInt);
  return dateTimeInt;
}
