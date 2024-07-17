import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/UI/Home/widgets/fav_tiles.dart';
import 'package:music_player/UI/Home/widgets/playlist_card.dart';
import 'package:music_player/UI/core/constants.dart';
import 'package:music_player/backend/application/favourites/favourites_bloc.dart';
import 'package:music_player/backend/models/player/player_model.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FavouritesBloc>(context).add(const Initilize());
    return Expanded(
      child: ListView(
        children: [
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Playlist",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(4, (index) => const PlayListCard()),
            ),
          ),
          Text(
            "Favorites",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          BlocBuilder<FavouritesBloc, FavouritesState>(
            builder: (context, state) {
              List<PlayerModel> favList = state.favList.map((ele) {
                return PlayerModel(
                    id: ele.id,
                    title: ele.title,
                    authour: ele.authour,
                    uri: ele.uri);
              }).toList();
              if (state.favList.isEmpty) {
                return const Center(
                  child: Text(
                    "Your favourite songs will appear here",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 109, 107, 107)),
                  ),
                );
              } else {
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                    state.favList.length,
                    (index) => FavTiles(
                      id: state.favList[index].id,
                      title: state.favList[index].title,
                      authour: state.favList[index].authour,
                      favMusic: favList,
                      index: index,
                      uri: state.favList[index].uri,
                    ),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
