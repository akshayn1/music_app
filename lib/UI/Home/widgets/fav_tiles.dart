import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/UI/core/constants.dart';

class FavTiles extends StatelessWidget {
  const FavTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: SizedBox(
        height: 80,
        child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjcD43_9EiMENsyxpxMHo3Y39r44k62RaGTA&s"),
            radius: 30,
          ),
          title: Text(
            "Favorites",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          subtitle: const Text(
            "the creu",
            style: TextStyle(color: Colors.white),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.play_arrow_solid,
                size: 30,
                color: kPrimaryColor,
              )),
        ),
      ),
    );
  }
}
