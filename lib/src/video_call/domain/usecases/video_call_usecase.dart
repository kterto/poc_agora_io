import 'package:convenience_types/convenience_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:poc_agora_io/src/video_call/domain/models/agora_config_model.dart';
import 'package:poc_agora_io/src/video_call/domain/models/video_call_event_model.dart';
import 'package:poc_agora_io/src/video_call/domain/repositories/video_call_repository.dart';

part 'video_call_state.dart';
part 'video_call_usecase.freezed.dart';

class VideoCallUsecase extends StateNotifier<VideoCallState> {
  VideoCallUsecase({required VideoCallRepository videoCallRepository})
      : _videoCallRepository = videoCallRepository,
        super(VideoCallState.inicial());

  final VideoCallRepository _videoCallRepository;

  Future<void> setupAgoraEngine() async {
    state = state.copyWith(agoraConfigRequestStatus: const Loading());

    Result<AgoraConfigModel> agoraConfigRes =
        await _videoCallRepository.getConfig();

    print(
        '[VideoCallUsecase][setupAgoraEngine][agoraConfigRes]: $agoraConfigRes');

    await [Permission.microphone, Permission.camera].request();

    state = state.copyWith(
      agoraEngine: Maybe.from(createAgoraRtcEngine()),
    );

    await agoraConfigRes.handle(
      onFailure: (error) async {
        state = state.copyWith(agoraConfigRequestStatus: Failed(error));
      },
      onSuccess: (data) async {
        state = state.copyWith(
          agoraConfigRequestStatus: Succeeded(data),
          appId: data.appId,
          localUid: data.localUid,
          channelName: data.channelName,
          rtcToken: data.rtcToken,
        );

        state.agoraEngine.when(
          nothing: () {},
          just: (engine) async {
            await engine.initialize(RtcEngineContext(appId: state.appId));
            await engine.enableVideo();
            engine.registerEventHandler(_getEventHandler());
          },
        );
      },
    );
  }

  RtcEngineEventHandler _getEventHandler() {
    return RtcEngineEventHandler(
      onConnectionStateChanged: onConnectionStateChanged,
      onJoinChannelSuccess: onJoinChannelSuccess,
      onUserJoined: onUserJoined,
      onUserOffline: onUserOffline,
    );
  }

  void onConnectionStateChanged(
    RtcConnection connection,
    ConnectionStateType connectionState,
    ConnectionChangedReasonType reason,
  ) {
    if (reason == ConnectionChangedReasonType.connectionChangedLeaveChannel) {
      state = state.copyWith(
        remoteUids: [],
        isJoined: false,
      );
    }

    Map<String, dynamic> eventArgs = {};
    eventArgs["connection"] = connection;
    eventArgs["state"] = connectionState;
    eventArgs["reason"] = reason;

    state = state.copyWith(event: Just(ConnectionChanged(args: eventArgs)));
  }

  void onJoinChannelSuccess(RtcConnection connection, int elapsed) {
    Map<String, dynamic> eventArgs = {};
    eventArgs["connection"] = connection;
    eventArgs["elapsed"] = elapsed;

    state = state.copyWith(event: Just(JoinChannelSuccess(args: eventArgs)));
    print('Joined channel');
    print('connection: $connection');
    print('elapsed: $elapsed');
  }

  void onUserJoined(RtcConnection connection, int remoteUid, int elapsed) {
    Map<String, dynamic> eventArgs = {};
    eventArgs["connection"] = connection;
    eventArgs["remoteUid"] = remoteUid;
    eventArgs["elapsed"] = elapsed;

    state = state.copyWith(
      event: Just(UserJoined(args: eventArgs)),
      remoteUids: state.remoteUids.toList()..add(remoteUid),
    );

    print('onUserJoined');
    print('connection: $connection');
    print('remoteUid: $remoteUid');
    print('elapsed: $elapsed');
  }

  void onUserOffline(
    RtcConnection connection,
    int remoteUid,
    UserOfflineReasonType reason,
  ) {
    Map<String, dynamic> eventArgs = {};
    eventArgs["connection"] = connection;
    eventArgs["remoteUid"] = remoteUid;
    eventArgs["reason"] = reason;

    state = state.copyWith(
      event: Just(UserOffline(args: eventArgs)),
      remoteUids: state.remoteUids.toList()..remove(remoteUid),
    );
  }

  Future<void> onEnterVideoCall() async {
    state = state.copyWith(flow: const VideoCall());
    const options = ChannelMediaOptions(
      clientRoleType: ClientRoleType.clientRoleBroadcaster,
      channelProfile: ChannelProfileType.channelProfileCommunication,
    );

    await state.agoraEngine.when(
      nothing: () async {},
      just: (engine) async {
        await engine.startPreview();
        await engine.joinChannel(
          token: state.rtcToken,
          channelId: state.channelName,
          options: options,
          uid: state.localUid,
        );
      },
    );
  }
}
