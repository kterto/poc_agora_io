import 'package:auto_route/auto_route.dart';
import 'package:convenience_types/types/maybe.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poc_agora_io/src/router/app_router.gr.dart';
import 'package:poc_agora_io/src/shared/utils/extensions/build_context_extensions.dart';
import 'package:poc_agora_io/src/video_call/domain/usecases/video_call_usecase.dart';
import 'package:poc_agora_io/src/video_call/video_call_providers.dart';

class VideoCallSmartView extends ConsumerStatefulWidget {
  const VideoCallSmartView({
    super.key,
    required this.channelName,
    required this.token,
  });

  final Maybe<String> channelName;
  final Maybe<String> token;
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
          .setupAgoraEngine(
            channelName: widget.channelName,
            token: widget.token,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    VideoCallState state =
        ref.watch(VideoCallProviders.videoCallUsecaseProvider);
    ref.listen(VideoCallProviders.videoCallUsecaseProvider, _listener);

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

  void _listener(VideoCallState? previous, VideoCallState next) {
    if (next.action != previous?.action) {
      next.action.when(
        idle: () {},
        popFlow: () {
          context.popForced();
        },
      );
    }
  }
}
