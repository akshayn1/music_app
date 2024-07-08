import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';

class PlayerService {
  final AudioPlayer audioPlayer = AudioPlayer();

  final ValueNotifier<Duration> duration = ValueNotifier(Duration.zero);
  final ValueNotifier<String> position = ValueNotifier("");
  final ValueNotifier<double> max = ValueNotifier(0);
  final ValueNotifier<double> value = ValueNotifier(0);

  void play(String? url) {
    try {
      log("message chk");
      audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(url!)));
      audioPlayer.play();
      upDatePosition();
    } catch (e) {
      log(e.toString());
    }
  }

  void upDatePosition() {
    audioPlayer.durationStream.listen((event) {
      duration.value = event!;
      max.value = event.inSeconds.toDouble();
    });
    audioPlayer.positionStream.listen((event) {
      position.value = event.toString().split(".")[0];
      value.value = event.inSeconds.toDouble();
    });
  }

  void pause() {
    audioPlayer.pause();
  }

  void resume() {
    audioPlayer.play();
  }

  void stop() {
    audioPlayer.stop();
    log(audioPlayer.processingState.toString());
  }

  void seekDuration(int seconds) {
    final duration = Duration(seconds: seconds);
    audioPlayer.seek(duration);
  }
}
