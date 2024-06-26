import 'package:poc_agora_io/src/sample/domain/usecases/sample_usecase/sample_usecase.dart';
import 'package:poc_agora_io/src/shared/shared_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleProviders {
  static AutoDisposeStateNotifierProvider<SampleUsecase, SampleState>
      sampleUsecaseProvider = AutoDisposeStateNotifierProvider(
    (ref) => SampleUsecase(
      apiRepository: ref.read(SharedProviders.apiRepositoryProvider.notifier),
    ),
  );
}
