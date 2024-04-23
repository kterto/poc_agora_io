part of 'video_call_usecase.dart';

@freezed
class VideoCallState with _$VideoCallState {
  const VideoCallState._();
  const factory VideoCallState({
    required VideoCallAction action,
    required VideoCallFlow flow,
    required Maybe<Map<String, dynamic>> config,
    required Maybe<RtcEngine> agoraEngine,
    required int localUid,
    required String appId,
    required String channelName,
    required String rtcToken,
    required List<int> remoteUids,
    required bool isJoined,
    required bool isBroadcaster,
    required Maybe<VideoCallEventModel> event,
    required RequestStatus<AgoraConfigModel> agoraConfigRequestStatus,
  }) = _VideoCallState;

  factory VideoCallState.inicial() => const VideoCallState(
        action: _Idle(),
        flow: EnterVideoCall(),
        config: Nothing(),
        agoraEngine: Nothing(),
        localUid: -1,
        appId: '',
        channelName: '',
        rtcToken: '',
        remoteUids: [],
        isBroadcaster: true,
        isJoined: false,
        event: Nothing(),
        agoraConfigRequestStatus: Idle(),
      );
}

@freezed
class VideoCallFlow with _$VideoCallFlow {
  const factory VideoCallFlow.enterVideoCall() = EnterVideoCall;
  const factory VideoCallFlow.videoCall() = VideoCall;
}

@freezed
class VideoCallAction with _$VideoCallAction {
  const factory VideoCallAction.idle() = _Idle;
  const factory VideoCallAction.popFlow() = _PopFlow;
}
