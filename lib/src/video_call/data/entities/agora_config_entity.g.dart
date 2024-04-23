// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agora_config_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgoraConfigEntityImpl _$$AgoraConfigEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AgoraConfigEntityImpl(
      appId: json['appId'] as String?,
      channelName: json['channelName'] as String?,
      localUid: json['uid'] as int?,
      rtcToken: json['rtcToken'] as String?,
    );

Map<String, dynamic> _$$AgoraConfigEntityImplToJson(
        _$AgoraConfigEntityImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'channelName': instance.channelName,
      'uid': instance.localUid,
      'rtcToken': instance.rtcToken,
    };
