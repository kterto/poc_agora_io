import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/router/app_router.gr.dart';
import 'package:flutter_base/src/sample/presentation/dummies/sample_home_screen.dart';
import 'package:flutter_base/src/sample/presentation/dummies/sample_login_screen.dart';
import 'package:flutter_base/src/sample/presentation/dummies/sample_splash_screen.dart';
import 'package:flutter_base/src/sample/presentation/smarties/sample_smart_view.dart';

@RoutePage<Never>()
class SampleSplashScreenWrapper extends StatelessWidget {
  const SampleSplashScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) => const SampleSplashScreen();
}

@RoutePage<Never>()
class SampleLoginScreenWrapper extends StatelessWidget {
  const SampleLoginScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) => const SampleLoginScreen();
}

@RoutePage<Never>()
class SampleHomeScreenWrapper extends StatelessWidget {
  const SampleHomeScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) => const SampleHomeScreen();
}

@RoutePage<Never>(name: 'SampleSmartRouteWrapper')
class SampleSmartViewWrappper extends StatelessWidget {
  const SampleSmartViewWrappper({super.key});

  @override
  Widget build(BuildContext context) => const SampleSmartView();
}

class SampleRoutes {
  static List<AutoRoute> routes = [
    AutoRoute(
      page: SampleSmartRouteWrapper.page,
      initial: true,
      children: [
        AutoRoute(page: SampleSplashRouteWrapper.page),
        AutoRoute(page: SampleLoginRouteWrapper.page),
        AutoRoute(page: SampleHomeRouteWrapper.page),
      ],
    ),
  ];
}
