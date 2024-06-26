import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:music_player/backend/failures/main_failure.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class MusicService {
  final audioQuery = OnAudioQuery();

  checkPermission() async {
    log("checkPermission() => Called");
    final PermissionStatus perm = await Permission.audio.request();
    if (perm.isGranted) {
      log("Permission Granted");
    } else {
      log("Permission denied");
      openAppSettings();
    }
  }

  Future<Either<MainFailure, List<SongModel>>> queryMusics() async {
    try {
      final List<SongModel> results = await audioQuery.querySongs(
          ignoreCase: true,
          orderType: OrderType.ASC_OR_SMALLER,
          sortType: null,
          uriType: UriType.EXTERNAL);

      final List<SongModel> songDetails = results
          .where((element) =>
              element.duration! > 60000 &&
              element.fileExtension == 'mp3' &&
              element.size > 900000)
          .toList();

      return Right(songDetails);
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.fetchDataFailure());
    }
  }
}
