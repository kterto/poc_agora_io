import 'package:convenience_types/errors/app_error.dart';
import 'package:convenience_types/types/maybe.dart';
import 'package:poc_agora_io/src/shared/data/miscelaneous/storage_keys.dart';

abstract class LocalStorageError extends AppError {
  const LocalStorageError({
    super.msg,
    super.slug,
    super.stackTrace,
    this.key = const Nothing(),
  });
  final Maybe<StorageKey> key;
}

class KeyNotFoundError extends LocalStorageError {
  const KeyNotFoundError({super.key, super.msg, super.slug, super.stackTrace});
}
