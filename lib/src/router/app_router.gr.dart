// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:convenience_types/types/maybe.dart' as _i3;
import 'package:flutter/widgets.dart' as _i5;
import 'package:poc_agora_io/src/sample/routes/sample_routes.dart' as _i2;
import 'package:poc_agora_io/src/video_call/routes/video_call_routes.dart'
    as _i1;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    EnterVideoCallRouteWrapper.name: (routeData) {
      return _i4.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.EnterVideoCallScreenWrapper(),
      );
    },
    SampleHomeRouteWrapper.name: (routeData) {
      return _i4.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i2.SampleHomeScreenWrapper(),
      );
    },
    SampleLoginRouteWrapper.name: (routeData) {
      return _i4.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i2.SampleLoginScreenWrapper(),
      );
    },
    SampleSmartRouteWrapper.name: (routeData) {
      return _i4.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i2.SampleSmartViewWrappper(),
      );
    },
    SampleSplashRouteWrapper.name: (routeData) {
      return _i4.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i2.SampleSplashScreenWrapper(),
      );
    },
    VideoCallRouteWrapper.name: (routeData) {
      return _i4.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.VideoCallScreenWrapper(),
      );
    },
    VideoCallSmartRouteWrapper.name: (routeData) {
      final args = routeData.argsAs<VideoCallSmartRouteWrapperArgs>(
          orElse: () => const VideoCallSmartRouteWrapperArgs());
      return _i4.AutoRoutePage<Never>(
        routeData: routeData,
        child: _i1.VideoCallSmartViewWrappper(
          key: args.key,
          channelName: args.channelName,
          token: args.token,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.EnterVideoCallScreenWrapper]
class EnterVideoCallRouteWrapper extends _i4.PageRouteInfo<void> {
  const EnterVideoCallRouteWrapper({List<_i4.PageRouteInfo>? children})
      : super(
          EnterVideoCallRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'EnterVideoCallRouteWrapper';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleHomeScreenWrapper]
class SampleHomeRouteWrapper extends _i4.PageRouteInfo<void> {
  const SampleHomeRouteWrapper({List<_i4.PageRouteInfo>? children})
      : super(
          SampleHomeRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleHomeRouteWrapper';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleLoginScreenWrapper]
class SampleLoginRouteWrapper extends _i4.PageRouteInfo<void> {
  const SampleLoginRouteWrapper({List<_i4.PageRouteInfo>? children})
      : super(
          SampleLoginRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleLoginRouteWrapper';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleSmartViewWrappper]
class SampleSmartRouteWrapper extends _i4.PageRouteInfo<void> {
  const SampleSmartRouteWrapper({List<_i4.PageRouteInfo>? children})
      : super(
          SampleSmartRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleSmartRouteWrapper';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleSplashScreenWrapper]
class SampleSplashRouteWrapper extends _i4.PageRouteInfo<void> {
  const SampleSplashRouteWrapper({List<_i4.PageRouteInfo>? children})
      : super(
          SampleSplashRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleSplashRouteWrapper';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i1.VideoCallScreenWrapper]
class VideoCallRouteWrapper extends _i4.PageRouteInfo<void> {
  const VideoCallRouteWrapper({List<_i4.PageRouteInfo>? children})
      : super(
          VideoCallRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'VideoCallRouteWrapper';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i1.VideoCallSmartViewWrappper]
class VideoCallSmartRouteWrapper
    extends _i4.PageRouteInfo<VideoCallSmartRouteWrapperArgs> {
  VideoCallSmartRouteWrapper({
    _i5.Key? key,
    _i3.Maybe<String> channelName = const _i3.Nothing(),
    _i3.Maybe<String> token = const _i3.Nothing(),
    List<_i4.PageRouteInfo>? children,
  }) : super(
          VideoCallSmartRouteWrapper.name,
          args: VideoCallSmartRouteWrapperArgs(
            key: key,
            channelName: channelName,
            token: token,
          ),
          initialChildren: children,
        );

  static const String name = 'VideoCallSmartRouteWrapper';

  static const _i4.PageInfo<VideoCallSmartRouteWrapperArgs> page =
      _i4.PageInfo<VideoCallSmartRouteWrapperArgs>(name);
}

class VideoCallSmartRouteWrapperArgs {
  const VideoCallSmartRouteWrapperArgs({
    this.key,
    this.channelName = const _i3.Nothing(),
    this.token = const _i3.Nothing(),
  });

  final _i5.Key? key;

  final _i3.Maybe<String> channelName;

  final _i3.Maybe<String> token;

  @override
  String toString() {
    return 'VideoCallSmartRouteWrapperArgs{key: $key, channelName: $channelName, token: $token}';
  }
}
