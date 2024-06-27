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
    required TResult Function(String? uri, int index) started,
    required TResult Function() stopSong,
    required TResult Function() pauseSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index)? started,
    TResult? Function()? stopSong,
    TResult? Function()? pauseSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index)? started,
    TResult Function()? stopSong,
    TResult Function()? pauseSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(PauseSong value) pauseSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(PauseSong value)? pauseSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StopSong value)? stopSong,
    TResult Function(PauseSong value)? pauseSong,
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
  $Res call({String? uri, int index});
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
    ));
  }
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements Started {
  const _$StartedImpl({required this.uri, required this.index});

  @override
  final String? uri;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerEvent.started(uri: $uri, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerEvent.started'))
      ..add(DiagnosticsProperty('uri', uri))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uri, int index) started,
    required TResult Function() stopSong,
    required TResult Function() pauseSong,
  }) {
    return started(uri, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index)? started,
    TResult? Function()? stopSong,
    TResult? Function()? pauseSong,
  }) {
    return started?.call(uri, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index)? started,
    TResult Function()? stopSong,
    TResult Function()? pauseSong,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(uri, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StopSong value) stopSong,
    required TResult Function(PauseSong value) pauseSong,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(PauseSong value)? pauseSong,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StopSong value)? stopSong,
    TResult Function(PauseSong value)? pauseSong,
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
      {required final String? uri, required final int index}) = _$StartedImpl;

  String? get uri;
  int get index;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String? uri, int index) started,
    required TResult Function() stopSong,
    required TResult Function() pauseSong,
  }) {
    return stopSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index)? started,
    TResult? Function()? stopSong,
    TResult? Function()? pauseSong,
  }) {
    return stopSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index)? started,
    TResult Function()? stopSong,
    TResult Function()? pauseSong,
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
    required TResult Function(StopSong value) stopSong,
    required TResult Function(PauseSong value) pauseSong,
  }) {
    return stopSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(PauseSong value)? pauseSong,
  }) {
    return stopSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StopSong value)? stopSong,
    TResult Function(PauseSong value)? pauseSong,
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
    required TResult Function(String? uri, int index) started,
    required TResult Function() stopSong,
    required TResult Function() pauseSong,
  }) {
    return pauseSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uri, int index)? started,
    TResult? Function()? stopSong,
    TResult? Function()? pauseSong,
  }) {
    return pauseSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uri, int index)? started,
    TResult Function()? stopSong,
    TResult Function()? pauseSong,
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
    required TResult Function(StopSong value) stopSong,
    required TResult Function(PauseSong value) pauseSong,
  }) {
    return pauseSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StopSong value)? stopSong,
    TResult? Function(PauseSong value)? pauseSong,
  }) {
    return pauseSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StopSong value)? stopSong,
    TResult Function(PauseSong value)? pauseSong,
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
mixin _$PlayerState {
  int get index => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;

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
  $Res call({int index, bool isPlaying});
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
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({int index, bool isPlaying});
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
    Object? isPlaying = null,
  }) {
    return _then(_$PlayerStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl with DiagnosticableTreeMixin implements _PlayerState {
  const _$PlayerStateImpl({required this.index, required this.isPlaying});

  @override
  final int index;
  @override
  final bool isPlaying;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerState(index: $index, isPlaying: $isPlaying)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerState'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('isPlaying', isPlaying));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {required final int index,
      required final bool isPlaying}) = _$PlayerStateImpl;

  @override
  int get index;
  @override
  bool get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
