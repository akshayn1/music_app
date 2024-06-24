import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/UI/core/constants.dart';

class PlayerScreen extends StatelessWidget {
  PlayerScreen({super.key});
  final ValueNotifier<double> _sliderValue = ValueNotifier(50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: const Center(
          child: Text(
            "Playing Now",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
              child: const Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/love-music-cd-music-cover-template-design-a8f2a1af7de0479ae4344113a4750136_screen.jpg?ts=1572382443"),
              ),
            ),
            const Text(
              "Love Music with Hearts",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "Authour",
              style: TextStyle(color: Colors.grey[400], fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            ValueListenableBuilder(
              valueListenable: _sliderValue,
              builder: (context, value, _) {
                return Slider(
                  value: value,
                  onChanged: (newVale) {
                    _sliderValue.value = newVale;
                  },
                  max: 100,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "02.20",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  Text(
                    "05.15",
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
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage("Assets/Icons/rewind.png"),
                        size: 24,
                        color: Colors.white,
                      )),
                  IconButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(kPrimaryColor)),
                    onPressed: () {},
                    icon: const SizedBox(
                      height: 70,
                      width: 70,
                      child: Icon(
                        CupertinoIcons.play_arrow_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 31, 31, 31))),
                      onPressed: () {},
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
  }
}
