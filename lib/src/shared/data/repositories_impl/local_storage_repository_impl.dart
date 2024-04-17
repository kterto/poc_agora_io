import 'package:convenience_types/types/maybe.dart';
import 'package:convenience_types/types/result.dart';
import 'package:flutter_base/src/shared/data/errors/local_storage_errors.dart';
import 'package:flutter_base/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:flutter_base/src/shared/domain/repositories/local_storage_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageRepositoryImpl implements LocalStorageRepository {
  final FlutterSecureStorage _secureStorage;

  LocalStorageRepositoryImpl({required FlutterSecureStorage secureStorage})
      : _secureStorage = secureStorage;

  String? _token;

  Maybe<String> get token => Maybe.from(_token);

  @override
  Future<Result> delete({required StorageKey key}) async {
    await _secureStorage.delete(key: key.keyName);
    return const Success(true);
  }

  @override
  Future<Result> deleteAll() async {
    await _secureStorage.deleteAll();
    _token = null;
    return const Success(true);
  }

  @override
  Future<Result<String>> read({required StorageKey key}) async {
    String? value = await _secureStorage.read(key: key.keyName);

    if (key == StorageKey.authToken && _token == null) {
      _token = value;
    }

    if (value == null) {
      return Failure(KeyNotFoundError(key: Just(key)));
    } else {
      return Success(value);
    }
  }

  @override
  Future<Result> write({
    required StorageKey key,
    Maybe<String> value = const Nothing(),
  }) async {
    await _secureStorage.write(key: key.keyName, value: value.getOrElse(null));

    if (key == StorageKey.authToken && _token == null) {
      _token = value.getOrElse('');
    }

    return const Success(true);
  }
}
