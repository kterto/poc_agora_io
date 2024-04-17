import 'package:convenience_types/types/maybe.dart';
import 'package:convenience_types/types/result.dart';
import 'package:flutter_base/src/shared/data/miscelaneous/storage_keys.dart';

abstract class LocalStorageRepository {
  Future<Result> write(
      {required StorageKey key, Maybe<String> value = const Nothing()});
  Future<Result<String>> read({required StorageKey key});
  Future<Result> delete({required StorageKey key});
  Future<Result> deleteAll();
}
