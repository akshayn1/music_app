import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';

class PlayerService {
  final AudioPlayer _audioPlayer = AudioPlayer();
  final ValueNotifier<bool> isPlaying = ValueNotifier(false);

  Future<void> play(String? url) async {
    try {
      await _audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(url!)));
      _audioPlayer.play();
      isPlaying.value = true;
    } catch (e) {
      log(e.toString());
    }
  }

  void pause() {
    _audioPlayer.pause();
    isPlaying.value = false;
  }
}
