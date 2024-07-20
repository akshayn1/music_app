import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlaylistEditScreen extends StatelessWidget {
  const PlaylistEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        flexibleSpace: const Center(
          child: Text(
            "Edit Info",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              "Done",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: 270,
                  width: 200,
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
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
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
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Playlist name :",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 230,
                  child: TextFormField(
                    initialValue: 'Hello',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
