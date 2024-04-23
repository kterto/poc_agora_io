import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poc_agora_io/src/video_call/video_call_providers.dart';

class EnterVideoCallScreen extends ConsumerWidget {
  const EnterVideoCallScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agoraConfigRequestStatus = ref.watch(
      VideoCallProviders.videoCallUsecaseProvider
          .select((state) => state.agoraConfigRequestStatus),
    );
    return Scaffold(
      body: Center(
        child: agoraConfigRequestStatus.maybeWhen(
          orElse: () => const SizedBox(),
          loading: () => const CircularProgressIndicator(),
          failed: (error) => Center(
            child: Text(error.msg.isNotEmpty
                ? error.msg
                : 'Error loading configuration'),
          ),
          succeeded: (config) => ElevatedButton(
            onPressed: ref
                .read(VideoCallProviders.videoCallUsecaseProvider.notifier)
                .onEnterVideoCall,
            child: const Text('Enter video call'),
          ),
        ),
      ),
    );
  }
}
