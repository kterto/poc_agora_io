import 'dart:io';
import 'package:convenience_types/convenience_types.dart';
import 'package:convenience_types/util/seed_test_state_mixin.dart';
import 'package:dio/dio.dart';
import 'package:poc_agora_io/src/sample/domain/forms/sign_in_form.dart';
import 'package:poc_agora_io/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:poc_agora_io/src/shared/domain/repositories/local_storage_repository.dart';
import 'package:poc_agora_io/src/shared/utils/api_messages/api_messages_constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poc_agora_io/src/shared/domain/models/api_state_model.dart';

class ApiRepository extends StateNotifier<ApiState> with SeedTestStateMixin {
  ApiRepository({
    required Dio httpClient,
    required LocalStorageRepository localStorageRepository,
  })  : _httpClient = httpClient,
        _localStorageRepository = localStorageRepository,
        super(const Unauthenticated());
  final Dio _httpClient;
  final LocalStorageRepository _localStorageRepository;
  Future<Options> get headers async {
    return (await _localStorageRepository.read(key: StorageKey.authToken))
        .handle(
      onSuccess: (token) => Options(
        headers: {"Authorization": 'Bearer $token'},
      ),
      onFailure: (_) => Options(),
    );
  }

  _handleErrors(
      HttpError error, DioException exception, StackTrace stackTrace) async {
    if (error is HttpUnauthorizedError) {
      await _localStorageRepository.delete(key: StorageKey.authToken);
      state = state.maybeMap(
        orElse: () => state,
        authenticated: (_) => const SignedOut(),
      );
    }
    if (error is HttpGoneError) {
      state = const Gone();
    }
  }

  Future<Result> delete<T>({
    required String url,
    Map<String, dynamic> body = const {},
    T? Function(dynamic)? errorResponseSerializer,
  }) async {
    try {
      final Response response = await _httpClient.delete(
        url,
        data: body,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
        defaultErrorMessage: ApiMessagesConstants.defaultFailureMessage,
        errorResponseSerializer: errorResponseSerializer,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }

  Future<Result> get<T>({
    required String url,
    Map<String, dynamic> queryParams = const {},
    T? Function(dynamic)? errorResponseSerializer,
  }) async {
    try {
      final Response response = await _httpClient.get(
        url,
        queryParameters: queryParams,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
        defaultErrorMessage: ApiMessagesConstants.defaultFailureMessage,
        errorResponseSerializer: errorResponseSerializer,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (e) {
      return const Failure(
        HttpUnknownError(
          slug: DefaultErrorMessages.unknownError,
        ),
      );
    }
  }

  Future<Result> patch<T>({
    required String url,
    Map<String, dynamic> body = const {},
    T? Function(dynamic)? errorResponseSerializer,
    File? file,
  }) async {
    try {
      final Response response = await _httpClient.patch(
        url,
        data: file != null
            ? FormData.fromMap({
                ...body,
                'file': await MultipartFile.fromFile(file.path),
              })
            : body,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
        defaultErrorMessage: ApiMessagesConstants.defaultFailureMessage,
        errorResponseSerializer: errorResponseSerializer,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }

  Future<Result> post<T>({
    required String url,
    Map<String, dynamic> body = const {},
    T? Function(dynamic)? errorResponseSerializer,
    File? file,
  }) async {
    try {
      final Response response = await _httpClient.post(
        url,
        data: file != null
            ? FormData.fromMap({
                ...body,
                'file': await MultipartFile.fromFile(file.path),
              })
            : body,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
        defaultErrorMessage: ApiMessagesConstants.defaultFailureMessage,
        errorResponseSerializer: errorResponseSerializer,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }

  Future<Result> put<T>({
    required String url,
    Map<String, dynamic> body = const {},
    T? Function(dynamic)? errorResponseSerializer,
  }) async {
    try {
      final Response response = await _httpClient.put(
        url,
        data: body,
        options: await headers,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
        defaultErrorMessage: ApiMessagesConstants.defaultFailureMessage,
        errorResponseSerializer: errorResponseSerializer,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(
        HttpUnknownError(
          slug: exception.toString(),
        ),
      );
    }
  }

  Future<Result<String>> signIn(SignInForm form) async {
    await Future.delayed(
      const Duration(milliseconds: 1500),
    );
    state = const Authenticated();
    return const Success("");
  }
}
