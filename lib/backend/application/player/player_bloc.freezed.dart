// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index, List<SongModel> musicList)
        started,
    required TResult Function() pauseSong,
    required TResult Function() refreashPlayer,
    required TResult Function() stopSong,
    required TResult Function() resumeSong,
    required TResult Function(double position, String position2,
            double duration, String duration2)
        songSlider,
    required TResult Function(double duration) seekSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult? Function()? pauseSong,
    TResult? Function()? refreashPlayer,
    TResult? Function()? stopSong,
    TResult? Function()? resumeSong,
    TResult? Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult? Function(double duration)? seekSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult Function()? pauseSong,
    TResult Function()? refreashPlayer,
    TResult Function()? stopSong,
    TResult Function()? resumeSong,
    TResult Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult Function(double duration)? seekSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(RefreashPlayer value) refreashPlayer,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(ResumeSong value) resumeSong,
    required TResult Function(SongSlider value) songSlider,
    required TResult Function(SeekSong value) seekSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(RefreashPlayer value)? refreashPlayer,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(ResumeSong value)? resumeSong,
    TResult? Function(SongSlider value)? songSlider,
    TResult? Function(SeekSong value)? seekSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(RefreashPlayer value)? refreashPlayer,
    TResult Function(StopSong value)? stopSong,
    TResult Function(ResumeSong value)? resumeSong,
    TResult Function(SongSlider value)? songSlider,
    TResult Function(SeekSong value)? seekSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? uri, int index, List<SongModel> musicList});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? index = null,
    Object? musicList = null,
  }) {
    return _then(_$StartedImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      musicList: null == musicList
          ? _value._musicList
          : musicList // ignore: cast_nullable_to_non_nullable
              as List<SongModel>,
    ));
  }
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements Started {
  const _$StartedImpl(
      {required this.uri,
      required this.index,
      required final List<SongModel> musicList})
      : _musicList = musicList;

  @override
  final String? uri;
  @override
  final int index;
  final List<SongModel> _musicList;
  @override
  List<SongModel> get musicList {
    if (_musicList is EqualUnmodifiableListView) return _musicList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerEvent.started(uri: $uri, index: $index, musicList: $musicList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerEvent.started'))
      ..add(DiagnosticsProperty('uri', uri))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('musicList', musicList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._musicList, _musicList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, uri, index, const DeepCollectionEquality().hash(_musicList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index, List<SongModel> musicList)
        started,
    required TResult Function() pauseSong,
    required TResult Function() refreashPlayer,
    required TResult Function() stopSong,
    required TResult Function() resumeSong,
    required TResult Function(double position, String position2,
            double duration, String duration2)
        songSlider,
    required TResult Function(double duration) seekSong,
  }) {
    return started(uri, index, musicList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult? Function()? pauseSong,
    TResult? Function()? refreashPlayer,
    TResult? Function()? stopSong,
    TResult? Function()? resumeSong,
    TResult? Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult? Function(double duration)? seekSong,
  }) {
    return started?.call(uri, index, musicList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult Function()? pauseSong,
    TResult Function()? refreashPlayer,
    TResult Function()? stopSong,
    TResult Function()? resumeSong,
    TResult Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult Function(double duration)? seekSong,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(uri, index, musicList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(RefreashPlayer value) refreashPlayer,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(ResumeSong value) resumeSong,
    required TResult Function(SongSlider value) songSlider,
    required TResult Function(SeekSong value) seekSong,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(RefreashPlayer value)? refreashPlayer,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(ResumeSong value)? resumeSong,
    TResult? Function(SongSlider value)? songSlider,
    TResult? Function(SeekSong value)? seekSong,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(RefreashPlayer value)? refreashPlayer,
    TResult Function(StopSong value)? stopSong,
    TResult Function(ResumeSong value)? resumeSong,
    TResult Function(SongSlider value)? songSlider,
    TResult Function(SeekSong value)? seekSong,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements PlayerEvent {
  const factory Started(
      {required final String? uri,
      required final int index,
      required final List<SongModel> musicList}) = _$StartedImpl;

  String? get uri;
  int get index;
  List<SongModel> get musicList;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseSongImplCopyWith<$Res> {
  factory _$$PauseSongImplCopyWith(
          _$PauseSongImpl value, $Res Function(_$PauseSongImpl) then) =
      __$$PauseSongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseSongImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PauseSongImpl>
    implements _$$PauseSongImplCopyWith<$Res> {
  __$$PauseSongImplCopyWithImpl(
      _$PauseSongImpl _value, $Res Function(_$PauseSongImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseSongImpl with DiagnosticableTreeMixin implements PauseSong {
  const _$PauseSongImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerEvent.pauseSong()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlayerEvent.pauseSong'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseSongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index, List<SongModel> musicList)
        started,
    required TResult Function() pauseSong,
    required TResult Function() refreashPlayer,
    required TResult Function() stopSong,
    required TResult Function() resumeSong,
    required TResult Function(double position, String position2,
            double duration, String duration2)
        songSlider,
    required TResult Function(double duration) seekSong,
  }) {
    return pauseSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult? Function()? pauseSong,
    TResult? Function()? refreashPlayer,
    TResult? Function()? stopSong,
    TResult? Function()? resumeSong,
    TResult? Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult? Function(double duration)? seekSong,
  }) {
    return pauseSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult Function()? pauseSong,
    TResult Function()? refreashPlayer,
    TResult Function()? stopSong,
    TResult Function()? resumeSong,
    TResult Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult Function(double duration)? seekSong,
    required TResult orElse(),
  }) {
    if (pauseSong != null) {
      return pauseSong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(RefreashPlayer value) refreashPlayer,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(ResumeSong value) resumeSong,
    required TResult Function(SongSlider value) songSlider,
    required TResult Function(SeekSong value) seekSong,
  }) {
    return pauseSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(RefreashPlayer value)? refreashPlayer,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(ResumeSong value)? resumeSong,
    TResult? Function(SongSlider value)? songSlider,
    TResult? Function(SeekSong value)? seekSong,
  }) {
    return pauseSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(RefreashPlayer value)? refreashPlayer,
    TResult Function(StopSong value)? stopSong,
    TResult Function(ResumeSong value)? resumeSong,
    TResult Function(SongSlider value)? songSlider,
    TResult Function(SeekSong value)? seekSong,
    required TResult orElse(),
  }) {
    if (pauseSong != null) {
      return pauseSong(this);
    }
    return orElse();
  }
}

abstract class PauseSong implements PlayerEvent {
  const factory PauseSong() = _$PauseSongImpl;
}

/// @nodoc
abstract class _$$RefreashPlayerImplCopyWith<$Res> {
  factory _$$RefreashPlayerImplCopyWith(_$RefreashPlayerImpl value,
          $Res Function(_$RefreashPlayerImpl) then) =
      __$$RefreashPlayerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreashPlayerImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$RefreashPlayerImpl>
    implements _$$RefreashPlayerImplCopyWith<$Res> {
  __$$RefreashPlayerImplCopyWithImpl(
      _$RefreashPlayerImpl _value, $Res Function(_$RefreashPlayerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreashPlayerImpl
    with DiagnosticableTreeMixin
    implements RefreashPlayer {
  const _$RefreashPlayerImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerEvent.refreashPlayer()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlayerEvent.refreashPlayer'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreashPlayerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index, List<SongModel> musicList)
        started,
    required TResult Function() pauseSong,
    required TResult Function() refreashPlayer,
    required TResult Function() stopSong,
    required TResult Function() resumeSong,
    required TResult Function(double position, String position2,
            double duration, String duration2)
        songSlider,
    required TResult Function(double duration) seekSong,
  }) {
    return refreashPlayer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult? Function()? pauseSong,
    TResult? Function()? refreashPlayer,
    TResult? Function()? stopSong,
    TResult? Function()? resumeSong,
    TResult? Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult? Function(double duration)? seekSong,
  }) {
    return refreashPlayer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult Function()? pauseSong,
    TResult Function()? refreashPlayer,
    TResult Function()? stopSong,
    TResult Function()? resumeSong,
    TResult Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult Function(double duration)? seekSong,
    required TResult orElse(),
  }) {
    if (refreashPlayer != null) {
      return refreashPlayer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(RefreashPlayer value) refreashPlayer,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(ResumeSong value) resumeSong,
    required TResult Function(SongSlider value) songSlider,
    required TResult Function(SeekSong value) seekSong,
  }) {
    return refreashPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(RefreashPlayer value)? refreashPlayer,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(ResumeSong value)? resumeSong,
    TResult? Function(SongSlider value)? songSlider,
    TResult? Function(SeekSong value)? seekSong,
  }) {
    return refreashPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(RefreashPlayer value)? refreashPlayer,
    TResult Function(StopSong value)? stopSong,
    TResult Function(ResumeSong value)? resumeSong,
    TResult Function(SongSlider value)? songSlider,
    TResult Function(SeekSong value)? seekSong,
    required TResult orElse(),
  }) {
    if (refreashPlayer != null) {
      return refreashPlayer(this);
    }
    return orElse();
  }
}

abstract class RefreashPlayer implements PlayerEvent {
  const factory RefreashPlayer() = _$RefreashPlayerImpl;
}

/// @nodoc
abstract class _$$StopSongImplCopyWith<$Res> {
  factory _$$StopSongImplCopyWith(
          _$StopSongImpl value, $Res Function(_$StopSongImpl) then) =
      __$$StopSongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopSongImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$StopSongImpl>
    implements _$$StopSongImplCopyWith<$Res> {
  __$$StopSongImplCopyWithImpl(
      _$StopSongImpl _value, $Res Function(_$StopSongImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopSongImpl with DiagnosticableTreeMixin implements StopSong {
  const _$StopSongImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerEvent.stopSong()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlayerEvent.stopSong'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopSongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index, List<SongModel> musicList)
        started,
    required TResult Function() pauseSong,
    required TResult Function() refreashPlayer,
    required TResult Function() stopSong,
    required TResult Function() resumeSong,
    required TResult Function(double position, String position2,
            double duration, String duration2)
        songSlider,
    required TResult Function(double duration) seekSong,
  }) {
    return stopSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult? Function()? pauseSong,
    TResult? Function()? refreashPlayer,
    TResult? Function()? stopSong,
    TResult? Function()? resumeSong,
    TResult? Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult? Function(double duration)? seekSong,
  }) {
    return stopSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult Function()? pauseSong,
    TResult Function()? refreashPlayer,
    TResult Function()? stopSong,
    TResult Function()? resumeSong,
    TResult Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult Function(double duration)? seekSong,
    required TResult orElse(),
  }) {
    if (stopSong != null) {
      return stopSong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(RefreashPlayer value) refreashPlayer,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(ResumeSong value) resumeSong,
    required TResult Function(SongSlider value) songSlider,
    required TResult Function(SeekSong value) seekSong,
  }) {
    return stopSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(RefreashPlayer value)? refreashPlayer,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(ResumeSong value)? resumeSong,
    TResult? Function(SongSlider value)? songSlider,
    TResult? Function(SeekSong value)? seekSong,
  }) {
    return stopSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(RefreashPlayer value)? refreashPlayer,
    TResult Function(StopSong value)? stopSong,
    TResult Function(ResumeSong value)? resumeSong,
    TResult Function(SongSlider value)? songSlider,
    TResult Function(SeekSong value)? seekSong,
    required TResult orElse(),
  }) {
    if (stopSong != null) {
      return stopSong(this);
    }
    return orElse();
  }
}

abstract class StopSong implements PlayerEvent {
  const factory StopSong() = _$StopSongImpl;
}

/// @nodoc
abstract class _$$ResumeSongImplCopyWith<$Res> {
  factory _$$ResumeSongImplCopyWith(
          _$ResumeSongImpl value, $Res Function(_$ResumeSongImpl) then) =
      __$$ResumeSongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeSongImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$ResumeSongImpl>
    implements _$$ResumeSongImplCopyWith<$Res> {
  __$$ResumeSongImplCopyWithImpl(
      _$ResumeSongImpl _value, $Res Function(_$ResumeSongImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResumeSongImpl with DiagnosticableTreeMixin implements ResumeSong {
  const _$ResumeSongImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerEvent.resumeSong()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlayerEvent.resumeSong'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeSongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index, List<SongModel> musicList)
        started,
    required TResult Function() pauseSong,
    required TResult Function() refreashPlayer,
    required TResult Function() stopSong,
    required TResult Function() resumeSong,
    required TResult Function(double position, String position2,
            double duration, String duration2)
        songSlider,
    required TResult Function(double duration) seekSong,
  }) {
    return resumeSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult? Function()? pauseSong,
    TResult? Function()? refreashPlayer,
    TResult? Function()? stopSong,
    TResult? Function()? resumeSong,
    TResult? Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult? Function(double duration)? seekSong,
  }) {
    return resumeSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult Function()? pauseSong,
    TResult Function()? refreashPlayer,
    TResult Function()? stopSong,
    TResult Function()? resumeSong,
    TResult Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult Function(double duration)? seekSong,
    required TResult orElse(),
  }) {
    if (resumeSong != null) {
      return resumeSong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(RefreashPlayer value) refreashPlayer,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(ResumeSong value) resumeSong,
    required TResult Function(SongSlider value) songSlider,
    required TResult Function(SeekSong value) seekSong,
  }) {
    return resumeSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(RefreashPlayer value)? refreashPlayer,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(ResumeSong value)? resumeSong,
    TResult? Function(SongSlider value)? songSlider,
    TResult? Function(SeekSong value)? seekSong,
  }) {
    return resumeSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(RefreashPlayer value)? refreashPlayer,
    TResult Function(StopSong value)? stopSong,
    TResult Function(ResumeSong value)? resumeSong,
    TResult Function(SongSlider value)? songSlider,
    TResult Function(SeekSong value)? seekSong,
    required TResult orElse(),
  }) {
    if (resumeSong != null) {
      return resumeSong(this);
    }
    return orElse();
  }
}

abstract class ResumeSong implements PlayerEvent {
  const factory ResumeSong() = _$ResumeSongImpl;
}

/// @nodoc
abstract class _$$SongSliderImplCopyWith<$Res> {
  factory _$$SongSliderImplCopyWith(
          _$SongSliderImpl value, $Res Function(_$SongSliderImpl) then) =
      __$$SongSliderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double position, String position2, double duration, String duration2});
}

/// @nodoc
class __$$SongSliderImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SongSliderImpl>
    implements _$$SongSliderImplCopyWith<$Res> {
  __$$SongSliderImplCopyWithImpl(
      _$SongSliderImpl _value, $Res Function(_$SongSliderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? position2 = null,
    Object? duration = null,
    Object? duration2 = null,
  }) {
    return _then(_$SongSliderImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
      position2: null == position2
          ? _value.position2
          : position2 // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      duration2: null == duration2
          ? _value.duration2
          : duration2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SongSliderImpl with DiagnosticableTreeMixin implements SongSlider {
  const _$SongSliderImpl(
      {required this.position,
      required this.position2,
      required this.duration,
      required this.duration2});

  @override
  final double position;
  @override
  final String position2;
  @override
  final double duration;
  @override
  final String duration2;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerEvent.songSlider(position: $position, position2: $position2, duration: $duration, duration2: $duration2)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerEvent.songSlider'))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('position2', position2))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('duration2', duration2));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongSliderImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.position2, position2) ||
                other.position2 == position2) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.duration2, duration2) ||
                other.duration2 == duration2));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, position, position2, duration, duration2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongSliderImplCopyWith<_$SongSliderImpl> get copyWith =>
      __$$SongSliderImplCopyWithImpl<_$SongSliderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index, List<SongModel> musicList)
        started,
    required TResult Function() pauseSong,
    required TResult Function() refreashPlayer,
    required TResult Function() stopSong,
    required TResult Function() resumeSong,
    required TResult Function(double position, String position2,
            double duration, String duration2)
        songSlider,
    required TResult Function(double duration) seekSong,
  }) {
    return songSlider(position, position2, duration, duration2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult? Function()? pauseSong,
    TResult? Function()? refreashPlayer,
    TResult? Function()? stopSong,
    TResult? Function()? resumeSong,
    TResult? Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult? Function(double duration)? seekSong,
  }) {
    return songSlider?.call(position, position2, duration, duration2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult Function()? pauseSong,
    TResult Function()? refreashPlayer,
    TResult Function()? stopSong,
    TResult Function()? resumeSong,
    TResult Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult Function(double duration)? seekSong,
    required TResult orElse(),
  }) {
    if (songSlider != null) {
      return songSlider(position, position2, duration, duration2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(RefreashPlayer value) refreashPlayer,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(ResumeSong value) resumeSong,
    required TResult Function(SongSlider value) songSlider,
    required TResult Function(SeekSong value) seekSong,
  }) {
    return songSlider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(RefreashPlayer value)? refreashPlayer,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(ResumeSong value)? resumeSong,
    TResult? Function(SongSlider value)? songSlider,
    TResult? Function(SeekSong value)? seekSong,
  }) {
    return songSlider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(RefreashPlayer value)? refreashPlayer,
    TResult Function(StopSong value)? stopSong,
    TResult Function(ResumeSong value)? resumeSong,
    TResult Function(SongSlider value)? songSlider,
    TResult Function(SeekSong value)? seekSong,
    required TResult orElse(),
  }) {
    if (songSlider != null) {
      return songSlider(this);
    }
    return orElse();
  }
}

abstract class SongSlider implements PlayerEvent {
  const factory SongSlider(
      {required final double position,
      required final String position2,
      required final double duration,
      required final String duration2}) = _$SongSliderImpl;

  double get position;
  String get position2;
  double get duration;
  String get duration2;
  @JsonKey(ignore: true)
  _$$SongSliderImplCopyWith<_$SongSliderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeekSongImplCopyWith<$Res> {
  factory _$$SeekSongImplCopyWith(
          _$SeekSongImpl value, $Res Function(_$SeekSongImpl) then) =
      __$$SeekSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double duration});
}

/// @nodoc
class __$$SeekSongImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SeekSongImpl>
    implements _$$SeekSongImplCopyWith<$Res> {
  __$$SeekSongImplCopyWithImpl(
      _$SeekSongImpl _value, $Res Function(_$SeekSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$SeekSongImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SeekSongImpl with DiagnosticableTreeMixin implements SeekSong {
  const _$SeekSongImpl({required this.duration});

  @override
  final double duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerEvent.seekSong(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerEvent.seekSong'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeekSongImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeekSongImplCopyWith<_$SeekSongImpl> get copyWith =>
      __$$SeekSongImplCopyWithImpl<_$SeekSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index, List<SongModel> musicList)
        started,
    required TResult Function() pauseSong,
    required TResult Function() refreashPlayer,
    required TResult Function() stopSong,
    required TResult Function() resumeSong,
    required TResult Function(double position, String position2,
            double duration, String duration2)
        songSlider,
    required TResult Function(double duration) seekSong,
  }) {
    return seekSong(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult? Function()? pauseSong,
    TResult? Function()? refreashPlayer,
    TResult? Function()? stopSong,
    TResult? Function()? resumeSong,
    TResult? Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult? Function(double duration)? seekSong,
  }) {
    return seekSong?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index, List<SongModel> musicList)?
        started,
    TResult Function()? pauseSong,
    TResult Function()? refreashPlayer,
    TResult Function()? stopSong,
    TResult Function()? resumeSong,
    TResult Function(double position, String position2, double duration,
            String duration2)?
        songSlider,
    TResult Function(double duration)? seekSong,
    required TResult orElse(),
  }) {
    if (seekSong != null) {
      return seekSong(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(RefreashPlayer value) refreashPlayer,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(ResumeSong value) resumeSong,
    required TResult Function(SongSlider value) songSlider,
    required TResult Function(SeekSong value) seekSong,
  }) {
    return seekSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(RefreashPlayer value)? refreashPlayer,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(ResumeSong value)? resumeSong,
    TResult? Function(SongSlider value)? songSlider,
    TResult? Function(SeekSong value)? seekSong,
  }) {
    return seekSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(RefreashPlayer value)? refreashPlayer,
    TResult Function(StopSong value)? stopSong,
    TResult Function(ResumeSong value)? resumeSong,
    TResult Function(SongSlider value)? songSlider,
    TResult Function(SeekSong value)? seekSong,
    required TResult orElse(),
  }) {
    if (seekSong != null) {
      return seekSong(this);
    }
    return orElse();
  }
}

abstract class SeekSong implements PlayerEvent {
  const factory SeekSong({required final double duration}) = _$SeekSongImpl;

  double get duration;
  @JsonKey(ignore: true)
  _$$SeekSongImplCopyWith<_$SeekSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerState {
  int get index => throw _privateConstructorUsedError;
  bool get onceArt => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isFirstSong => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  List<SongModel> get musicList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call(
      {int index,
      bool onceArt,
      bool isPlaying,
      bool isFirstSong,
      String duration,
      double max,
      double value,
      String position,
      List<SongModel> musicList});
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? onceArt = null,
    Object? isPlaying = null,
    Object? isFirstSong = null,
    Object? duration = null,
    Object? max = null,
    Object? value = null,
    Object? position = null,
    Object? musicList = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      onceArt: null == onceArt
          ? _value.onceArt
          : onceArt // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstSong: null == isFirstSong
          ? _value.isFirstSong
          : isFirstSong // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      musicList: null == musicList
          ? _value.musicList
          : musicList // ignore: cast_nullable_to_non_nullable
              as List<SongModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerStateImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$PlayerStateImplCopyWith(
          _$PlayerStateImpl value, $Res Function(_$PlayerStateImpl) then) =
      __$$PlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      bool onceArt,
      bool isPlaying,
      bool isFirstSong,
      String duration,
      double max,
      double value,
      String position,
      List<SongModel> musicList});
}

/// @nodoc
class __$$PlayerStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateImpl>
    implements _$$PlayerStateImplCopyWith<$Res> {
  __$$PlayerStateImplCopyWithImpl(
      _$PlayerStateImpl _value, $Res Function(_$PlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? onceArt = null,
    Object? isPlaying = null,
    Object? isFirstSong = null,
    Object? duration = null,
    Object? max = null,
    Object? value = null,
    Object? position = null,
    Object? musicList = null,
  }) {
    return _then(_$PlayerStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      onceArt: null == onceArt
          ? _value.onceArt
          : onceArt // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstSong: null == isFirstSong
          ? _value.isFirstSong
          : isFirstSong // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      musicList: null == musicList
          ? _value._musicList
          : musicList // ignore: cast_nullable_to_non_nullable
              as List<SongModel>,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl with DiagnosticableTreeMixin implements _PlayerState {
  const _$PlayerStateImpl(
      {required this.index,
      required this.onceArt,
      required this.isPlaying,
      required this.isFirstSong,
      required this.duration,
      required this.max,
      required this.value,
      required this.position,
      required final List<SongModel> musicList})
      : _musicList = musicList;

  @override
  final int index;
  @override
  final bool onceArt;
  @override
  final bool isPlaying;
  @override
  final bool isFirstSong;
  @override
  final String duration;
  @override
  final double max;
  @override
  final double value;
  @override
  final String position;
  final List<SongModel> _musicList;
  @override
  List<SongModel> get musicList {
    if (_musicList is EqualUnmodifiableListView) return _musicList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerState(index: $index, onceArt: $onceArt, isPlaying: $isPlaying, isFirstSong: $isFirstSong, duration: $duration, max: $max, value: $value, position: $position, musicList: $musicList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerState'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('onceArt', onceArt))
      ..add(DiagnosticsProperty('isPlaying', isPlaying))
      ..add(DiagnosticsProperty('isFirstSong', isFirstSong))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('max', max))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('musicList', musicList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.onceArt, onceArt) || other.onceArt == onceArt) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isFirstSong, isFirstSong) ||
                other.isFirstSong == isFirstSong) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._musicList, _musicList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      onceArt,
      isPlaying,
      isFirstSong,
      duration,
      max,
      value,
      position,
      const DeepCollectionEquality().hash(_musicList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {required final int index,
      required final bool onceArt,
      required final bool isPlaying,
      required final bool isFirstSong,
      required final String duration,
      required final double max,
      required final double value,
      required final String position,
      required final List<SongModel> musicList}) = _$PlayerStateImpl;

  @override
  int get index;
  @override
  bool get onceArt;
  @override
  bool get isPlaying;
  @override
  bool get isFirstSong;
  @override
  String get duration;
  @override
  double get max;
  @override
  double get value;
  @override
  String get position;
  @override
  List<SongModel> get musicList;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
