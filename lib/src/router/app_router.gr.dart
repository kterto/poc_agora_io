// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:poc_agora_io/src/sample/routes/sample_routes.dart' as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SampleHomeRouteWrapper.name: (routeData) {
      return _i2.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.SampleHomeScreenWrapper(),
      );
    },
    SampleLoginRouteWrapper.name: (routeData) {
      return _i2.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.SampleLoginScreenWrapper(),
      );
    },
    SampleSmartRouteWrapper.name: (routeData) {
      return _i2.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.SampleSmartViewWrappper(),
      );
    },
    SampleSplashRouteWrapper.name: (routeData) {
      return _i2.AutoRoutePage<Never>(
        routeData: routeData,
        child: const _i1.SampleSplashScreenWrapper(),
      );
    },
  };
}

/// generated route for
/// [_i1.SampleHomeScreenWrapper]
class SampleHomeRouteWrapper extends _i2.PageRouteInfo<void> {
  const SampleHomeRouteWrapper({List<_i2.PageRouteInfo>? children})
      : super(
          SampleHomeRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleHomeRouteWrapper';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.SampleLoginScreenWrapper]
class SampleLoginRouteWrapper extends _i2.PageRouteInfo<void> {
  const SampleLoginRouteWrapper({List<_i2.PageRouteInfo>? children})
      : super(
          SampleLoginRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleLoginRouteWrapper';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.SampleSmartViewWrappper]
class SampleSmartRouteWrapper extends _i2.PageRouteInfo<void> {
  const SampleSmartRouteWrapper({List<_i2.PageRouteInfo>? children})
      : super(
          SampleSmartRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleSmartRouteWrapper';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.SampleSplashScreenWrapper]
class SampleSplashRouteWrapper extends _i2.PageRouteInfo<void> {
  const SampleSplashRouteWrapper({List<_i2.PageRouteInfo>? children})
      : super(
          SampleSplashRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SampleSplashRouteWrapper';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
