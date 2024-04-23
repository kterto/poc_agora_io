import 'package:convenience_types/convenience_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poc_agora_io/src/video_call/domain/models/agora_config_model.dart';

part 'agora_config_entity.freezed.dart';
part 'agora_config_entity.g.dart';

@freezed
class AgoraConfigEntity with _$AgoraConfigEntity {
  const AgoraConfigEntity._();
  const factory AgoraConfigEntity({
    String? appId,
    String? channelName,
    @JsonKey(name: 'uid') int? localUid,
    String? rtcToken,
  }) = _AgoraConfigEntity;

  factory AgoraConfigEntity.fromJson(Map<String, dynamic> json) =>
      _$AgoraConfigEntityFromJson(json);

  AgoraConfigModel toDomain() {
    try {
      return AgoraConfigModel(
        appId: appId!,
        channelName: channelName!,
        rtcToken: rtcToken!,
        localUid: localUid!,
      );
    } catch (e) {
      throw ParseException("[AgoraConfigEntity]: $e");
    }
  }
}
