// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_call_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoCallEventModel {
  Map<String, dynamic> get args => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> args) idle,
    required TResult Function(Map<String, dynamic> args) connectionChanged,
    required TResult Function(Map<String, dynamic> args) joinChannelSuccess,
    required TResult Function(Map<String, dynamic> args) userJoined,
    required TResult Function(Map<String, dynamic> args) userOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> args)? idle,
    TResult? Function(Map<String, dynamic> args)? connectionChanged,
    TResult? Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult? Function(Map<String, dynamic> args)? userJoined,
    TResult? Function(Map<String, dynamic> args)? userOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> args)? idle,
    TResult Function(Map<String, dynamic> args)? connectionChanged,
    TResult Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult Function(Map<String, dynamic> args)? userJoined,
    TResult Function(Map<String, dynamic> args)? userOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleEvent value) idle,
    required TResult Function(ConnectionChanged value) connectionChanged,
    required TResult Function(JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(UserJoined value) userJoined,
    required TResult Function(UserOffline value) userOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleEvent value)? idle,
    TResult? Function(ConnectionChanged value)? connectionChanged,
    TResult? Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(UserJoined value)? userJoined,
    TResult? Function(UserOffline value)? userOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleEvent value)? idle,
    TResult Function(ConnectionChanged value)? connectionChanged,
    TResult Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(UserJoined value)? userJoined,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoCallEventModelCopyWith<VideoCallEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallEventModelCopyWith<$Res> {
  factory $VideoCallEventModelCopyWith(
          VideoCallEventModel value, $Res Function(VideoCallEventModel) then) =
      _$VideoCallEventModelCopyWithImpl<$Res, VideoCallEventModel>;
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class _$VideoCallEventModelCopyWithImpl<$Res, $Val extends VideoCallEventModel>
    implements $VideoCallEventModelCopyWith<$Res> {
  _$VideoCallEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_value.copyWith(
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleEventImplCopyWith<$Res>
    implements $VideoCallEventModelCopyWith<$Res> {
  factory _$$IdleEventImplCopyWith(
          _$IdleEventImpl value, $Res Function(_$IdleEventImpl) then) =
      __$$IdleEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class __$$IdleEventImplCopyWithImpl<$Res>
    extends _$VideoCallEventModelCopyWithImpl<$Res, _$IdleEventImpl>
    implements _$$IdleEventImplCopyWith<$Res> {
  __$$IdleEventImplCopyWithImpl(
      _$IdleEventImpl _value, $Res Function(_$IdleEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$IdleEventImpl(
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$IdleEventImpl implements IdleEvent {
  const _$IdleEventImpl({final Map<String, dynamic> args = const {}})
      : _args = args;

  final Map<String, dynamic> _args;
  @override
  @JsonKey()
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'VideoCallEventModel.idle(args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleEventImpl &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleEventImplCopyWith<_$IdleEventImpl> get copyWith =>
      __$$IdleEventImplCopyWithImpl<_$IdleEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> args) idle,
    required TResult Function(Map<String, dynamic> args) connectionChanged,
    required TResult Function(Map<String, dynamic> args) joinChannelSuccess,
    required TResult Function(Map<String, dynamic> args) userJoined,
    required TResult Function(Map<String, dynamic> args) userOffline,
  }) {
    return idle(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> args)? idle,
    TResult? Function(Map<String, dynamic> args)? connectionChanged,
    TResult? Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult? Function(Map<String, dynamic> args)? userJoined,
    TResult? Function(Map<String, dynamic> args)? userOffline,
  }) {
    return idle?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> args)? idle,
    TResult Function(Map<String, dynamic> args)? connectionChanged,
    TResult Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult Function(Map<String, dynamic> args)? userJoined,
    TResult Function(Map<String, dynamic> args)? userOffline,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleEvent value) idle,
    required TResult Function(ConnectionChanged value) connectionChanged,
    required TResult Function(JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(UserJoined value) userJoined,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleEvent value)? idle,
    TResult? Function(ConnectionChanged value)? connectionChanged,
    TResult? Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(UserJoined value)? userJoined,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleEvent value)? idle,
    TResult Function(ConnectionChanged value)? connectionChanged,
    TResult Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(UserJoined value)? userJoined,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleEvent implements VideoCallEventModel {
  const factory IdleEvent({final Map<String, dynamic> args}) = _$IdleEventImpl;

  @override
  Map<String, dynamic> get args;
  @override
  @JsonKey(ignore: true)
  _$$IdleEventImplCopyWith<_$IdleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionChangedImplCopyWith<$Res>
    implements $VideoCallEventModelCopyWith<$Res> {
  factory _$$ConnectionChangedImplCopyWith(_$ConnectionChangedImpl value,
          $Res Function(_$ConnectionChangedImpl) then) =
      __$$ConnectionChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class __$$ConnectionChangedImplCopyWithImpl<$Res>
    extends _$VideoCallEventModelCopyWithImpl<$Res, _$ConnectionChangedImpl>
    implements _$$ConnectionChangedImplCopyWith<$Res> {
  __$$ConnectionChangedImplCopyWithImpl(_$ConnectionChangedImpl _value,
      $Res Function(_$ConnectionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$ConnectionChangedImpl(
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ConnectionChangedImpl implements ConnectionChanged {
  const _$ConnectionChangedImpl({required final Map<String, dynamic> args})
      : _args = args;

  final Map<String, dynamic> _args;
  @override
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'VideoCallEventModel.connectionChanged(args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionChangedImpl &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionChangedImplCopyWith<_$ConnectionChangedImpl> get copyWith =>
      __$$ConnectionChangedImplCopyWithImpl<_$ConnectionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> args) idle,
    required TResult Function(Map<String, dynamic> args) connectionChanged,
    required TResult Function(Map<String, dynamic> args) joinChannelSuccess,
    required TResult Function(Map<String, dynamic> args) userJoined,
    required TResult Function(Map<String, dynamic> args) userOffline,
  }) {
    return connectionChanged(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> args)? idle,
    TResult? Function(Map<String, dynamic> args)? connectionChanged,
    TResult? Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult? Function(Map<String, dynamic> args)? userJoined,
    TResult? Function(Map<String, dynamic> args)? userOffline,
  }) {
    return connectionChanged?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> args)? idle,
    TResult Function(Map<String, dynamic> args)? connectionChanged,
    TResult Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult Function(Map<String, dynamic> args)? userJoined,
    TResult Function(Map<String, dynamic> args)? userOffline,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleEvent value) idle,
    required TResult Function(ConnectionChanged value) connectionChanged,
    required TResult Function(JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(UserJoined value) userJoined,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return connectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleEvent value)? idle,
    TResult? Function(ConnectionChanged value)? connectionChanged,
    TResult? Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(UserJoined value)? userJoined,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return connectionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleEvent value)? idle,
    TResult Function(ConnectionChanged value)? connectionChanged,
    TResult Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(UserJoined value)? userJoined,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(this);
    }
    return orElse();
  }
}

abstract class ConnectionChanged implements VideoCallEventModel {
  const factory ConnectionChanged({required final Map<String, dynamic> args}) =
      _$ConnectionChangedImpl;

  @override
  Map<String, dynamic> get args;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionChangedImplCopyWith<_$ConnectionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinChannelSuccessImplCopyWith<$Res>
    implements $VideoCallEventModelCopyWith<$Res> {
  factory _$$JoinChannelSuccessImplCopyWith(_$JoinChannelSuccessImpl value,
          $Res Function(_$JoinChannelSuccessImpl) then) =
      __$$JoinChannelSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class __$$JoinChannelSuccessImplCopyWithImpl<$Res>
    extends _$VideoCallEventModelCopyWithImpl<$Res, _$JoinChannelSuccessImpl>
    implements _$$JoinChannelSuccessImplCopyWith<$Res> {
  __$$JoinChannelSuccessImplCopyWithImpl(_$JoinChannelSuccessImpl _value,
      $Res Function(_$JoinChannelSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$JoinChannelSuccessImpl(
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$JoinChannelSuccessImpl implements JoinChannelSuccess {
  const _$JoinChannelSuccessImpl({required final Map<String, dynamic> args})
      : _args = args;

  final Map<String, dynamic> _args;
  @override
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'VideoCallEventModel.joinChannelSuccess(args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinChannelSuccessImpl &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinChannelSuccessImplCopyWith<_$JoinChannelSuccessImpl> get copyWith =>
      __$$JoinChannelSuccessImplCopyWithImpl<_$JoinChannelSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> args) idle,
    required TResult Function(Map<String, dynamic> args) connectionChanged,
    required TResult Function(Map<String, dynamic> args) joinChannelSuccess,
    required TResult Function(Map<String, dynamic> args) userJoined,
    required TResult Function(Map<String, dynamic> args) userOffline,
  }) {
    return joinChannelSuccess(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> args)? idle,
    TResult? Function(Map<String, dynamic> args)? connectionChanged,
    TResult? Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult? Function(Map<String, dynamic> args)? userJoined,
    TResult? Function(Map<String, dynamic> args)? userOffline,
  }) {
    return joinChannelSuccess?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> args)? idle,
    TResult Function(Map<String, dynamic> args)? connectionChanged,
    TResult Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult Function(Map<String, dynamic> args)? userJoined,
    TResult Function(Map<String, dynamic> args)? userOffline,
    required TResult orElse(),
  }) {
    if (joinChannelSuccess != null) {
      return joinChannelSuccess(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleEvent value) idle,
    required TResult Function(ConnectionChanged value) connectionChanged,
    required TResult Function(JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(UserJoined value) userJoined,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return joinChannelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleEvent value)? idle,
    TResult? Function(ConnectionChanged value)? connectionChanged,
    TResult? Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(UserJoined value)? userJoined,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return joinChannelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleEvent value)? idle,
    TResult Function(ConnectionChanged value)? connectionChanged,
    TResult Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(UserJoined value)? userJoined,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (joinChannelSuccess != null) {
      return joinChannelSuccess(this);
    }
    return orElse();
  }
}

abstract class JoinChannelSuccess implements VideoCallEventModel {
  const factory JoinChannelSuccess({required final Map<String, dynamic> args}) =
      _$JoinChannelSuccessImpl;

  @override
  Map<String, dynamic> get args;
  @override
  @JsonKey(ignore: true)
  _$$JoinChannelSuccessImplCopyWith<_$JoinChannelSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserJoinedImplCopyWith<$Res>
    implements $VideoCallEventModelCopyWith<$Res> {
  factory _$$UserJoinedImplCopyWith(
          _$UserJoinedImpl value, $Res Function(_$UserJoinedImpl) then) =
      __$$UserJoinedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class __$$UserJoinedImplCopyWithImpl<$Res>
    extends _$VideoCallEventModelCopyWithImpl<$Res, _$UserJoinedImpl>
    implements _$$UserJoinedImplCopyWith<$Res> {
  __$$UserJoinedImplCopyWithImpl(
      _$UserJoinedImpl _value, $Res Function(_$UserJoinedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$UserJoinedImpl(
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UserJoinedImpl implements UserJoined {
  const _$UserJoinedImpl({required final Map<String, dynamic> args})
      : _args = args;

  final Map<String, dynamic> _args;
  @override
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'VideoCallEventModel.userJoined(args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserJoinedImpl &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserJoinedImplCopyWith<_$UserJoinedImpl> get copyWith =>
      __$$UserJoinedImplCopyWithImpl<_$UserJoinedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> args) idle,
    required TResult Function(Map<String, dynamic> args) connectionChanged,
    required TResult Function(Map<String, dynamic> args) joinChannelSuccess,
    required TResult Function(Map<String, dynamic> args) userJoined,
    required TResult Function(Map<String, dynamic> args) userOffline,
  }) {
    return userJoined(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> args)? idle,
    TResult? Function(Map<String, dynamic> args)? connectionChanged,
    TResult? Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult? Function(Map<String, dynamic> args)? userJoined,
    TResult? Function(Map<String, dynamic> args)? userOffline,
  }) {
    return userJoined?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> args)? idle,
    TResult Function(Map<String, dynamic> args)? connectionChanged,
    TResult Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult Function(Map<String, dynamic> args)? userJoined,
    TResult Function(Map<String, dynamic> args)? userOffline,
    required TResult orElse(),
  }) {
    if (userJoined != null) {
      return userJoined(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleEvent value) idle,
    required TResult Function(ConnectionChanged value) connectionChanged,
    required TResult Function(JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(UserJoined value) userJoined,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return userJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleEvent value)? idle,
    TResult? Function(ConnectionChanged value)? connectionChanged,
    TResult? Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(UserJoined value)? userJoined,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return userJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleEvent value)? idle,
    TResult Function(ConnectionChanged value)? connectionChanged,
    TResult Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(UserJoined value)? userJoined,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (userJoined != null) {
      return userJoined(this);
    }
    return orElse();
  }
}

abstract class UserJoined implements VideoCallEventModel {
  const factory UserJoined({required final Map<String, dynamic> args}) =
      _$UserJoinedImpl;

  @override
  Map<String, dynamic> get args;
  @override
  @JsonKey(ignore: true)
  _$$UserJoinedImplCopyWith<_$UserJoinedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserOfflineImplCopyWith<$Res>
    implements $VideoCallEventModelCopyWith<$Res> {
  factory _$$UserOfflineImplCopyWith(
          _$UserOfflineImpl value, $Res Function(_$UserOfflineImpl) then) =
      __$$UserOfflineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class __$$UserOfflineImplCopyWithImpl<$Res>
    extends _$VideoCallEventModelCopyWithImpl<$Res, _$UserOfflineImpl>
    implements _$$UserOfflineImplCopyWith<$Res> {
  __$$UserOfflineImplCopyWithImpl(
      _$UserOfflineImpl _value, $Res Function(_$UserOfflineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$UserOfflineImpl(
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UserOfflineImpl implements UserOffline {
  const _$UserOfflineImpl({required final Map<String, dynamic> args})
      : _args = args;

  final Map<String, dynamic> _args;
  @override
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'VideoCallEventModel.userOffline(args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOfflineImpl &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOfflineImplCopyWith<_$UserOfflineImpl> get copyWith =>
      __$$UserOfflineImplCopyWithImpl<_$UserOfflineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> args) idle,
    required TResult Function(Map<String, dynamic> args) connectionChanged,
    required TResult Function(Map<String, dynamic> args) joinChannelSuccess,
    required TResult Function(Map<String, dynamic> args) userJoined,
    required TResult Function(Map<String, dynamic> args) userOffline,
  }) {
    return userOffline(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> args)? idle,
    TResult? Function(Map<String, dynamic> args)? connectionChanged,
    TResult? Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult? Function(Map<String, dynamic> args)? userJoined,
    TResult? Function(Map<String, dynamic> args)? userOffline,
  }) {
    return userOffline?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> args)? idle,
    TResult Function(Map<String, dynamic> args)? connectionChanged,
    TResult Function(Map<String, dynamic> args)? joinChannelSuccess,
    TResult Function(Map<String, dynamic> args)? userJoined,
    TResult Function(Map<String, dynamic> args)? userOffline,
    required TResult orElse(),
  }) {
    if (userOffline != null) {
      return userOffline(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleEvent value) idle,
    required TResult Function(ConnectionChanged value) connectionChanged,
    required TResult Function(JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(UserJoined value) userJoined,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return userOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleEvent value)? idle,
    TResult? Function(ConnectionChanged value)? connectionChanged,
    TResult? Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(UserJoined value)? userJoined,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return userOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleEvent value)? idle,
    TResult Function(ConnectionChanged value)? connectionChanged,
    TResult Function(JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(UserJoined value)? userJoined,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (userOffline != null) {
      return userOffline(this);
    }
    return orElse();
  }
}

abstract class UserOffline implements VideoCallEventModel {
  const factory UserOffline({required final Map<String, dynamic> args}) =
      _$UserOfflineImpl;

  @override
  Map<String, dynamic> get args;
  @override
  @JsonKey(ignore: true)
  _$$UserOfflineImplCopyWith<_$UserOfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
