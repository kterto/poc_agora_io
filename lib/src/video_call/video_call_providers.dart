import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poc_agora_io/src/video_call/data/repositories_impl/video_call_repository_impl.dart';
import 'package:poc_agora_io/src/video_call/domain/repositories/video_call_repository.dart';
import 'package:poc_agora_io/src/video_call/domain/usecases/video_call_usecase.dart';

class VideoCallProviders {
  static Provider<VideoCallRepository> videoCallRepositoryProvider = Provider(
    (_) => VideoCallRepositoryImpl(),
  );

  static AutoDisposeStateNotifierProvider<VideoCallUsecase, VideoCallState>
      videoCallUsecaseProvider = AutoDisposeStateNotifierProvider(
    (ref) => VideoCallUsecase(
      videoCallRepository: ref.read(videoCallRepositoryProvider),
    ),
  );
}
