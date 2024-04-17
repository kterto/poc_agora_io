import 'package:convenience_types/types/result.dart';
import 'package:flutter_base/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:flutter_base/src/shared/domain/repositories/local_storage_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockLocalStorageRepository extends Mock
    implements LocalStorageRepository {}

void mockReadStorageResult({
  required Result<String> result,
  required MockLocalStorageRepository repository,
}) {
  when(() => repository.read(key: any<StorageKey>(named: 'key')))
      .thenAnswer((_) async => result);
}

void mockDeleteStorageResult({
  required Result result,
  required MockLocalStorageRepository repository,
}) {
  when(() => repository.delete(key: any<StorageKey>(named: 'key')))
      .thenAnswer((_) async => result);
}
