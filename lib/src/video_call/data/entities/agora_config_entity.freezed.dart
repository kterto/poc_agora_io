// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agora_config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgoraConfigEntity _$AgoraConfigEntityFromJson(Map<String, dynamic> json) {
  return _AgoraConfigEntity.fromJson(json);
}

/// @nodoc
mixin _$AgoraConfigEntity {
  String? get appId => throw _privateConstructorUsedError;
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid')
  int? get localUid => throw _privateConstructorUsedError;
  String? get rtcToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgoraConfigEntityCopyWith<AgoraConfigEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgoraConfigEntityCopyWith<$Res> {
  factory $AgoraConfigEntityCopyWith(
          AgoraConfigEntity value, $Res Function(AgoraConfigEntity) then) =
      _$AgoraConfigEntityCopyWithImpl<$Res, AgoraConfigEntity>;
  @useResult
  $Res call(
      {String? appId,
      String? channelName,
      @JsonKey(name: 'uid') int? localUid,
      String? rtcToken});
}

/// @nodoc
class _$AgoraConfigEntityCopyWithImpl<$Res, $Val extends AgoraConfigEntity>
    implements $AgoraConfigEntityCopyWith<$Res> {
  _$AgoraConfigEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? channelName = freezed,
    Object? localUid = freezed,
    Object? rtcToken = freezed,
  }) {
    return _then(_value.copyWith(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      localUid: freezed == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int?,
      rtcToken: freezed == rtcToken
          ? _value.rtcToken
          : rtcToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgoraConfigEntityImplCopyWith<$Res>
    implements $AgoraConfigEntityCopyWith<$Res> {
  factory _$$AgoraConfigEntityImplCopyWith(_$AgoraConfigEntityImpl value,
          $Res Function(_$AgoraConfigEntityImpl) then) =
      __$$AgoraConfigEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? appId,
      String? channelName,
      @JsonKey(name: 'uid') int? localUid,
      String? rtcToken});
}

/// @nodoc
class __$$AgoraConfigEntityImplCopyWithImpl<$Res>
    extends _$AgoraConfigEntityCopyWithImpl<$Res, _$AgoraConfigEntityImpl>
    implements _$$AgoraConfigEntityImplCopyWith<$Res> {
  __$$AgoraConfigEntityImplCopyWithImpl(_$AgoraConfigEntityImpl _value,
      $Res Function(_$AgoraConfigEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? channelName = freezed,
    Object? localUid = freezed,
    Object? rtcToken = freezed,
  }) {
    return _then(_$AgoraConfigEntityImpl(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      localUid: freezed == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int?,
      rtcToken: freezed == rtcToken
          ? _value.rtcToken
          : rtcToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgoraConfigEntityImpl extends _AgoraConfigEntity {
  const _$AgoraConfigEntityImpl(
      {this.appId,
      this.channelName,
      @JsonKey(name: 'uid') this.localUid,
      this.rtcToken})
      : super._();

  factory _$AgoraConfigEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgoraConfigEntityImplFromJson(json);

  @override
  final String? appId;
  @override
  final String? channelName;
  @override
  @JsonKey(name: 'uid')
  final int? localUid;
  @override
  final String? rtcToken;

  @override
  String toString() {
    return 'AgoraConfigEntity(appId: $appId, channelName: $channelName, localUid: $localUid, rtcToken: $rtcToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgoraConfigEntityImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.rtcToken, rtcToken) ||
                other.rtcToken == rtcToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appId, channelName, localUid, rtcToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgoraConfigEntityImplCopyWith<_$AgoraConfigEntityImpl> get copyWith =>
      __$$AgoraConfigEntityImplCopyWithImpl<_$AgoraConfigEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgoraConfigEntityImplToJson(
      this,
    );
  }
}

abstract class _AgoraConfigEntity extends AgoraConfigEntity {
  const factory _AgoraConfigEntity(
      {final String? appId,
      final String? channelName,
      @JsonKey(name: 'uid') final int? localUid,
      final String? rtcToken}) = _$AgoraConfigEntityImpl;
  const _AgoraConfigEntity._() : super._();

  factory _AgoraConfigEntity.fromJson(Map<String, dynamic> json) =
      _$AgoraConfigEntityImpl.fromJson;

  @override
  String? get appId;
  @override
  String? get channelName;
  @override
  @JsonKey(name: 'uid')
  int? get localUid;
  @override
  String? get rtcToken;
  @override
  @JsonKey(ignore: true)
  _$$AgoraConfigEntityImplCopyWith<_$AgoraConfigEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
