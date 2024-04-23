// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agora_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AgoraConfigModel {
  String get appId => throw _privateConstructorUsedError;
  String get channelName => throw _privateConstructorUsedError;
  String get rtcToken => throw _privateConstructorUsedError;
  int get localUid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgoraConfigModelCopyWith<AgoraConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgoraConfigModelCopyWith<$Res> {
  factory $AgoraConfigModelCopyWith(
          AgoraConfigModel value, $Res Function(AgoraConfigModel) then) =
      _$AgoraConfigModelCopyWithImpl<$Res, AgoraConfigModel>;
  @useResult
  $Res call({String appId, String channelName, String rtcToken, int localUid});
}

/// @nodoc
class _$AgoraConfigModelCopyWithImpl<$Res, $Val extends AgoraConfigModel>
    implements $AgoraConfigModelCopyWith<$Res> {
  _$AgoraConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? channelName = null,
    Object? rtcToken = null,
    Object? localUid = null,
  }) {
    return _then(_value.copyWith(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      rtcToken: null == rtcToken
          ? _value.rtcToken
          : rtcToken // ignore: cast_nullable_to_non_nullable
              as String,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgoraConfigModelImplCopyWith<$Res>
    implements $AgoraConfigModelCopyWith<$Res> {
  factory _$$AgoraConfigModelImplCopyWith(_$AgoraConfigModelImpl value,
          $Res Function(_$AgoraConfigModelImpl) then) =
      __$$AgoraConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appId, String channelName, String rtcToken, int localUid});
}

/// @nodoc
class __$$AgoraConfigModelImplCopyWithImpl<$Res>
    extends _$AgoraConfigModelCopyWithImpl<$Res, _$AgoraConfigModelImpl>
    implements _$$AgoraConfigModelImplCopyWith<$Res> {
  __$$AgoraConfigModelImplCopyWithImpl(_$AgoraConfigModelImpl _value,
      $Res Function(_$AgoraConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? channelName = null,
    Object? rtcToken = null,
    Object? localUid = null,
  }) {
    return _then(_$AgoraConfigModelImpl(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      rtcToken: null == rtcToken
          ? _value.rtcToken
          : rtcToken // ignore: cast_nullable_to_non_nullable
              as String,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AgoraConfigModelImpl extends _AgoraConfigModel {
  const _$AgoraConfigModelImpl(
      {required this.appId,
      required this.channelName,
      required this.rtcToken,
      required this.localUid})
      : super._();

  @override
  final String appId;
  @override
  final String channelName;
  @override
  final String rtcToken;
  @override
  final int localUid;

  @override
  String toString() {
    return 'AgoraConfigModel(appId: $appId, channelName: $channelName, rtcToken: $rtcToken, localUid: $localUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgoraConfigModelImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.rtcToken, rtcToken) ||
                other.rtcToken == rtcToken) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appId, channelName, rtcToken, localUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgoraConfigModelImplCopyWith<_$AgoraConfigModelImpl> get copyWith =>
      __$$AgoraConfigModelImplCopyWithImpl<_$AgoraConfigModelImpl>(
          this, _$identity);
}

abstract class _AgoraConfigModel extends AgoraConfigModel {
  const factory _AgoraConfigModel(
      {required final String appId,
      required final String channelName,
      required final String rtcToken,
      required final int localUid}) = _$AgoraConfigModelImpl;
  const _AgoraConfigModel._() : super._();

  @override
  String get appId;
  @override
  String get channelName;
  @override
  String get rtcToken;
  @override
  int get localUid;
  @override
  @JsonKey(ignore: true)
  _$$AgoraConfigModelImplCopyWith<_$AgoraConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
