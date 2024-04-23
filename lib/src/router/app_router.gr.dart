// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:poc_agora_io/src/sample/routes/sample_routes.dart' as _i2;
import 'package:poc_agora_io/src/video_call/routes/video_call_routes.dart'
    as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    EnterVideoCallRouteWrapper.name: (routeData) {
      return _i3.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.EnterVideoCallScreenWrapper(),
      );
    },
    SampleHomeRouteWrapper.name: (routeData) {
      return _i3.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i2.SampleHomeScreenWrapper(),
      );
    },
    SampleLoginRouteWrapper.name: (routeData) {
      return _i3.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i2.SampleLoginScreenWrapper(),
      );
    },
    SampleSmartRouteWrapper.name: (routeData) {
      return _i3.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i2.SampleSmartViewWrappper(),
      );
    },
    SampleSplashRouteWrapper.name: (routeData) {
      return _i3.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i2.SampleSplashScreenWrapper(),
      );
    },
    VideoCallRouteWrapper.name: (routeData) {
      return _i3.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.VideoCallScreenWrapper(),
      );
    },
    VideoCallSmartRouteWrapper.name: (routeData) {
      return _i3.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.VideoCallSmartViewWrappper(),
      );
    },
  };
}

/// generated route for
/// [_i1.EnterVideoCallScreenWrapper]
class EnterVideoCallRouteWrapper extends _i3.PageRouteInfo<void> {
  const EnterVideoCallRouteWrapper({List<_i3.PageRouteInfo>? children})
      : super(
          EnterVideoCallRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'EnterVideoCallRouteWrapper';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleHomeScreenWrapper]
class SampleHomeRouteWrapper extends _i3.PageRouteInfo<void> {
  const SampleHomeRouteWrapper({List<_i3.PageRouteInfo>? children})
      : super(
          SampleHomeRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleHomeRouteWrapper';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleLoginScreenWrapper]
class SampleLoginRouteWrapper extends _i3.PageRouteInfo<void> {
  const SampleLoginRouteWrapper({List<_i3.PageRouteInfo>? children})
      : super(
          SampleLoginRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleLoginRouteWrapper';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleSmartViewWrappper]
class SampleSmartRouteWrapper extends _i3.PageRouteInfo<void> {
  const SampleSmartRouteWrapper({List<_i3.PageRouteInfo>? children})
      : super(
          SampleSmartRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleSmartRouteWrapper';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SampleSplashScreenWrapper]
class SampleSplashRouteWrapper extends _i3.PageRouteInfo<void> {
  const SampleSplashRouteWrapper({List<_i3.PageRouteInfo>? children})
      : super(
          SampleSplashRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleSplashRouteWrapper';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i1.VideoCallScreenWrapper]
class VideoCallRouteWrapper extends _i3.PageRouteInfo<void> {
  const VideoCallRouteWrapper({List<_i3.PageRouteInfo>? children})
      : super(
          VideoCallRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'VideoCallRouteWrapper';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i1.VideoCallSmartViewWrappper]
class VideoCallSmartRouteWrapper extends _i3.PageRouteInfo<void> {
  const VideoCallSmartRouteWrapper({List<_i3.PageRouteInfo>? children})
      : super(
          VideoCallSmartRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'VideoCallSmartRouteWrapper';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
