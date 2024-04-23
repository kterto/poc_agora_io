import 'package:auto_route/auto_route.dart';
import 'package:convenience_types/types/maybe.dart';
import 'package:flutter/widgets.dart';
import 'package:poc_agora_io/src/router/app_router.gr.dart';
import 'package:poc_agora_io/src/video_call/presentation/dummies/enter_video_call_screen.dart';
import 'package:poc_agora_io/src/video_call/presentation/dummies/video_call_screen.dart';
import 'package:poc_agora_io/src/video_call/presentation/smarties/video_call_smart_view.dart';

@RoutePage<Never>()
class VideoCallScreenWrapper extends StatelessWidget {
  const VideoCallScreenWrapper({super.key});
  @override
  Widget build(BuildContext context) => const VideoCallScreen();
}

@RoutePage<Never>()
class EnterVideoCallScreenWrapper extends StatelessWidget {
  const EnterVideoCallScreenWrapper({super.key});
  @override
  Widget build(BuildContext context) => const EnterVideoCallScreen();
}

@RoutePage<Never>(name: 'VideoCallSmartRouteWrapper')
class VideoCallSmartViewWrappper extends StatelessWidget {
  const VideoCallSmartViewWrappper({
    super.key,
    this.channelName = const Nothing(),
    this.token = const Nothing(),
  });

  final Maybe<String> channelName;
  final Maybe<String> token;

  @override
  Widget build(BuildContext context) => VideoCallSmartView(
        channelName: channelName,
        token: token,
      );
}

class VideoCallRoutes {
  static List<AutoRoute> routes = [
    AutoRoute(
      page: VideoCallSmartRouteWrapper.page,
      children: [
        AutoRoute(page: EnterVideoCallRouteWrapper.page),
        AutoRoute(page: VideoCallRouteWrapper.page),
      ],
    ),
  ];
}
