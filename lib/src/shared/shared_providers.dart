import 'package:dio/dio.dart';
import 'package:poc_agora_io/src/shared/data/repositories_impl/api_repository.dart';
import 'package:poc_agora_io/src/shared/data/repositories_impl/local_storage_repository_impl.dart';
import 'package:poc_agora_io/src/shared/domain/models/api_state_model.dart';
import 'package:poc_agora_io/src/shared/domain/repositories/local_storage_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SharedProviders {
  static final Provider<Dio> httpClientProvider = Provider(
    (ref) => Dio(),
  );
  static final Provider<FlutterSecureStorage> flutterSecureStorageProvider =
      Provider((ref) => const FlutterSecureStorage());
  static final Provider<LocalStorageRepository> localStorageRepositoryProvider =
      Provider(
    (ref) => LocalStorageRepositoryImpl(
        secureStorage: ref.read(flutterSecureStorageProvider)),
  );
  static final StateNotifierProvider<ApiRepository, ApiState>
      apiRepositoryProvider = StateNotifierProvider(
    (ref) => ApiRepository(
      httpClient: ref.watch(SharedProviders.httpClientProvider),
      localStorageRepository: ref.read(localStorageRepositoryProvider),
    ),
  );
}
