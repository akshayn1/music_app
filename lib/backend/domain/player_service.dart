import 'dart:developer';

import 'package:just_audio/just_audio.dart';

class PlayerService {
  final audioPlayer = AudioPlayer();

  playSong(String uri) {
    try {
      audioPlayer.setAudioSource(
        AudioSource.uri(
          Uri.parse(uri),
        ),
      );
      audioPlayer.play();
    } catch (e) {
      log(e.toString());
    }
  }
}
