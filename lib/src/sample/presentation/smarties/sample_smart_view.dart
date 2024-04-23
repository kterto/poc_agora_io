import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poc_agora_io/src/router/app_router.gr.dart';
import 'package:poc_agora_io/src/sample/domain/usecases/sample_usecase/sample_usecase.dart';
import 'package:poc_agora_io/src/sample/sample_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poc_agora_io/src/shared/utils/extensions/build_context_extensions.dart';

class SampleSmartView extends ConsumerStatefulWidget {
  const SampleSmartView({super.key});
  @override
  SampleSmartViewState createState() => SampleSmartViewState();
}

class SampleSmartViewState extends ConsumerState<SampleSmartView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(SampleProviders.sampleUsecaseProvider.notifier).started();
    });
  }

  @override
  Widget build(BuildContext context) {
    SampleState state = ref.watch(SampleProviders.sampleUsecaseProvider);
    ref.listen(SampleProviders.sampleUsecaseProvider, _listener);

    return AutoRouter.declarative(
      routes: (PendingRoutesHandler handler) => _routes(handler, state),
    );
  }

  _routes(PendingRoutesHandler handler, SampleState state) {
    return state.flow.when(
      splash: () => const [SampleSplashRouteWrapper()],
      login: () => const [SampleLoginRouteWrapper()],
      home: () => const [SampleHomeRouteWrapper()],
    );
  }

  void _listener(SampleState? previous, SampleState next) {
    if (next.action != previous?.action) {
      next.action.when(
        idle: () {},
        goToVideoCall: (channelName, token) {
          context
              .push(VideoCallSmartRouteWrapper(
                channelName: channelName,
                token: token,
              ))
              .then(
                (_) => ref
                    .read(SampleProviders.sampleUsecaseProvider.notifier)
                    .fallingBack(),
              );
        },
      );
    }
  }
}
