import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poc_agora_io/src/router/app_router.gr.dart';
import 'package:poc_agora_io/src/video_call/domain/usecases/video_call_usecase.dart';
import 'package:poc_agora_io/src/video_call/video_call_providers.dart';

class VideoCallSmartView extends ConsumerStatefulWidget {
  const VideoCallSmartView({super.key});
  @override
  VideoCallSmartViewState createState() => VideoCallSmartViewState();
}

class VideoCallSmartViewState extends ConsumerState<VideoCallSmartView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(VideoCallProviders.videoCallUsecaseProvider.notifier)
          .setupAgoraEngine();
    });
  }

  @override
  Widget build(BuildContext context) {
    VideoCallState state =
        ref.watch(VideoCallProviders.videoCallUsecaseProvider);
    return AutoRouter.declarative(
      routes: (PendingRoutesHandler handler) => _routes(handler, state),
    );
  }

  List<PageRouteInfo<dynamic>> _routes(
    PendingRoutesHandler handler,
    VideoCallState state,
  ) {
    return state.flow.when(
      enterVideoCall: () => const [EnterVideoCallRouteWrapper()],
      videoCall: () => const [
        EnterVideoCallRouteWrapper(),
        VideoCallRouteWrapper(),
      ],
    );
  }
}
