import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/router/app_router_providers.dart';
import 'package:poc_agora_io/src/shared/data/miscelaneous/env.dart';
import 'package:poc_agora_io/src/shared/design_system/poc_agora_io_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PocAgoraIo extends ConsumerWidget {
  const PocAgoraIo({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'PocAgoraIo',
      theme: PocAgoraIoTheme.data(context),
      routerConfig: ref.watch(AppRouterProviders.appRouterProvider).config(),
      builder: (context, child) => Env.name != Envs.PRODUCTION
          ? Env.name.isNotEmpty
              ? Banner(
                  message: Env.name.toString(),
                  textDirection: TextDirection.ltr,
                  location: BannerLocation.topStart,
                  child: child,
                )
              : Banner(
                  message: "ENVLESS",
                  textDirection: TextDirection.ltr,
                  location: BannerLocation.topStart,
                  child: child,
                )
          : child!,
    );
  }
}
