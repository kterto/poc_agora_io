import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:convenience_types/types/maybe.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poc_agora_io/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:poc_agora_io/src/shared/utils/extensions/build_context_extensions.dart';
import 'package:poc_agora_io/src/video_call/domain/models/video_call_event_model.dart';
import 'package:poc_agora_io/src/video_call/domain/usecases/video_call_usecase.dart';
import 'package:poc_agora_io/src/video_call/presentation/widgets/control_button.dart';
import 'package:poc_agora_io/src/video_call/video_call_providers.dart';

class VideoCallScreen extends ConsumerStatefulWidget {
  const VideoCallScreen({super.key});

  @override
  VideoCallScreenState createState() => VideoCallScreenState();
}

class VideoCallScreenState extends ConsumerState<VideoCallScreen> {
  bool isMicrophoneMutted = false;
  bool isCameraMutted = false;

  @override
  Widget build(BuildContext context) {
    VideoCallState state =
        ref.watch(VideoCallProviders.videoCallUsecaseProvider);

    ref.listen(
        VideoCallProviders.videoCallUsecaseProvider
            .select((state) => state.event),
        _listener);

    return Scaffold(
      body: state.agoraEngine.when(
        nothing: () => const SizedBox(),
        just: (engine) => Stack(
          children: [
            if (state.remoteUids.isEmpty)
              Container(
                color: Colors.black,
                width: context.mediaQuery.size.width,
                height: context.mediaQuery.size.height,
                alignment: Alignment.center,
                child: const Text(
                  'Wainting user...',
                  style: TextStyle(color: Colors.white),
                ),
              )
            else
              AgoraVideoView(
                controller: VideoViewController.remote(
                  rtcEngine: engine,
                  canvas: VideoCanvas(uid: state.remoteUids.first),
                  connection: RtcConnection(channelId: state.channelName),
                ),
              ),
            Positioned(
              bottom: 16 + SpacingTokens.zetta,
              right: 16,
              child: SizedBox(
                width: context.mediaQuery.size.width * 0.3,
                height: context.mediaQuery.size.height * 0.3,
                child: AgoraVideoView(
                  controller: VideoViewController(
                    rtcEngine: engine,
                    canvas: VideoCanvas(
                      uid: state.localUid,
                      renderMode: RenderModeType.renderModeHidden,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: SpacingTokens.zetta,
                width: context.mediaQuery.size.width,
                child: Row(
                  children: [
                    const Spacer(),
                    ControlButton.microphone(
                      onPressed: () => _onMicrophonePressed(
                        widgetRef: ref,
                        muted: isMicrophoneMutted,
                      ),
                      muted: isMicrophoneMutted,
                    ),
                    const Spacer(),
                    ControlButton.cam(
                      onPressed: () => _onCamPressed(
                        widgetRef: ref,
                        muted: isCameraMutted,
                      ),
                      muted: isCameraMutted,
                    ),
                    const Spacer(),
                    ControlButton.call(
                      onPressed: () => _onCallPressed(ref),
                      muted: false,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _listener(
    Maybe<VideoCallEventModel>? previous,
    Maybe<VideoCallEventModel> next,
  ) {}

  Future<void> _onMicrophonePressed({
    required WidgetRef widgetRef,
    required bool muted,
  }) async {
    await widgetRef
        .read(VideoCallProviders.videoCallUsecaseProvider.notifier)
        .onMicPressed(!muted);
    setState(() {
      isMicrophoneMutted = !muted;
    });
  }

  Future<void> _onCamPressed({
    required WidgetRef widgetRef,
    required bool muted,
  }) async {
    await widgetRef
        .read(VideoCallProviders.videoCallUsecaseProvider.notifier)
        .onCamPressed(!muted);
    setState(() {
      isCameraMutted = !muted;
    });
  }

  Future<void> _onCallPressed(WidgetRef widgetRef) async {
    await widgetRef
        .read(VideoCallProviders.videoCallUsecaseProvider.notifier)
        .onEndCallPressed();
  }
}
