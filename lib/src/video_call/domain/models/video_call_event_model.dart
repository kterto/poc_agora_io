import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_call_event_model.freezed.dart';

@freezed
class VideoCallEventModel with _$VideoCallEventModel {
  const factory VideoCallEventModel.idle({
    @Default({}) Map<String, dynamic> args,
  }) = IdleEvent;
  const factory VideoCallEventModel.connectionChanged({
    required Map<String, dynamic> args,
  }) = ConnectionChanged;
  const factory VideoCallEventModel.joinChannelSuccess({
    required Map<String, dynamic> args,
  }) = JoinChannelSuccess;
  const factory VideoCallEventModel.userJoined({
    required Map<String, dynamic> args,
  }) = UserJoined;
  const factory VideoCallEventModel.userOffline({
    required Map<String, dynamic> args,
  }) = UserOffline;
}
