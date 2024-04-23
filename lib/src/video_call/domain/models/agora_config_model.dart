import 'package:freezed_annotation/freezed_annotation.dart';

part 'agora_config_model.freezed.dart';

@freezed
class AgoraConfigModel with _$AgoraConfigModel {
  const AgoraConfigModel._();
  const factory AgoraConfigModel({
    required String appId,
    required String channelName,
    required String rtcToken,
    required int localUid,
  }) = _AgoraConfigModel;
}
