import 'dart:io';
import 'package:convenience_types/errors/http_error.dart';
import 'package:convenience_types/types/result.dart';
import 'package:dio/dio.dart';
import 'package:poc_agora_io/src/sample/domain/forms/sign_in_form.dart';
import 'package:poc_agora_io/src/shared/data/errors/local_storage_errors.dart';
import 'package:poc_agora_io/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:poc_agora_io/src/shared/data/repositories_impl/api_repository.dart';
import 'package:poc_agora_io/src/shared/domain/models/api_state_model.dart';
import 'package:mocktail/mocktail.dart';
import '../../mocks/http_client_mocks.dart';
import '../../mocks/local_storage_repository_mocks.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late MockHttpClient httpClient;
  late MockLocalStorageRepository localStorageRepository;
  late ApiRepository apiRepository;
  setUp(() {
    localStorageRepository = MockLocalStorageRepository();
    httpClient = MockHttpClient();
    apiRepository = ApiRepository(
      httpClient: httpClient,
      localStorageRepository: localStorageRepository,
    );
  });
  setUpAll(() {
    registerFallbackValue(StorageKey.authToken);
    registerFallbackValue(Options());
    registerFallbackValue(FormData.fromMap({}));
  });
  const LocalStorageError testStorageError = KeyNotFoundError();
  const String testToken = 'testToken';
  const String testUrl = 'testUrl';
  const Map<String, dynamic> testBody = {};
  final RequestOptions testRequestOptions = RequestOptions(
    path: testUrl,
    data: testBody,
  );
  final File testFile = File('test/fixtures/shared/test_fixture.json');
  const Map<String, dynamic> testResponseData = {'testResponseData': 'data'};
  const Map<String, dynamic> testQueryParams = {'query': 'data'};
  final Response testResponse = Response(
    requestOptions: testRequestOptions,
    data: testResponseData,
  );
  final Response testResponse400 = Response(
    requestOptions: testRequestOptions,
    data: testResponseData,
    statusCode: 400,
  );
  final Response testResponse401 = Response(
    requestOptions: testRequestOptions,
    data: testResponseData,
    statusCode: 401,
  );
  final Response testResponse403 = Response(
    requestOptions: testRequestOptions,
    data: testResponseData,
    statusCode: 403,
  );
  final Response testResponse404 = Response(
    requestOptions: testRequestOptions,
    data: testResponseData,
    statusCode: 404,
  );
  final Response testResponse410 = Response(
    requestOptions: testRequestOptions,
    data: testResponseData,
    statusCode: 410,
  );
  final Response testResponse422 = Response(
    requestOptions: testRequestOptions,
    data: testResponseData,
    statusCode: 422,
  );
  final Response testResponse500 = Response(
    requestOptions: testRequestOptions,
    data: testResponseData,
    statusCode: 500,
  );
  const Map<String, dynamic> testHeader = {
    "Authorization": 'Bearer $testToken',
  };
  final Exception testGeneralException = Exception();
  final DioException testBadResponseCode400DioExcepion = DioException(
    requestOptions: testRequestOptions,
    type: DioExceptionType.badResponse,
    response: testResponse400,
  );
  final DioException testBadResponseCode401DioExcepion = DioException(
    requestOptions: testRequestOptions,
    type: DioExceptionType.badResponse,
    response: testResponse401,
  );
  final DioException testBadResponseCode403DioExcepion = DioException(
    requestOptions: testRequestOptions,
    type: DioExceptionType.badResponse,
    response: testResponse403,
  );
  final DioException testBadResponseCode404DioExcepion = DioException(
    requestOptions: testRequestOptions,
    type: DioExceptionType.badResponse,
    response: testResponse404,
  );
  final DioException testBadResponseCode410DioExcepion = DioException(
    requestOptions: testRequestOptions,
    type: DioExceptionType.badResponse,
    response: testResponse410,
  );
  final DioException testBadResponseCode422DioExcepion = DioException(
    requestOptions: testRequestOptions,
    type: DioExceptionType.badResponse,
    response: testResponse422,
  );
  final DioException testBadResponseCode500DioExcepion = DioException(
    requestOptions: testRequestOptions,
    type: DioExceptionType.badResponse,
    response: testResponse500,
  );
  const SignInForm testSignInForm = SignInForm();
  group(
    'initial state',
    () {
      test(
        'state should be Unauthenticated initialy',
        () {
          expect(apiRepository.state, const Unauthenticated());
        },
      );
    },
  );
  group(
    'headers',
    () {
      test(
        'It should return Options (empty) if the localStorageRepository.read operation is Failure when the getter headers is called',
        () async {
          mockReadStorageResult(
            result: const Failure(testStorageError),
            repository: localStorageRepository,
          );
          expect((await apiRepository.headers).headers, isNull);
        },
      );
      test(
        'It should return Options(headers: {Authorization: Bearer token}) if the localStorageRepository.read operation is Success when the getter headers is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          expect((await apiRepository.headers).headers, testHeader);
        },
      );
    },
  );
  group(
    'delete',
    () {
      test(
        'It should return Success(response.data), if no exception is thrown',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockDeleteResponse(
            response: testResponse,
            httpClient: httpClient,
          );
          Result deleteRes =
              await apiRepository.delete(url: testUrl, body: testBody);
          expect(deleteRes, const Success<dynamic>(testResponseData));
        },
      );
      test(
        'it should return failure with a HttpUnkownError, if it throw a general exception when delete is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockDeleteThrowException(
            exception: testGeneralException,
            httpClient: httpClient,
          );
          Result deleteRes =
              await apiRepository.delete(url: testUrl, body: testBody);
          deleteRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpUnknownError>()),
          );
        },
      );
      test(
        'it should return failure with a HttpBadRequest, if it throw a DioException with response.statusCode = 400, when delete is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockDeleteThrowException(
            exception: testBadResponseCode400DioExcepion,
            httpClient: httpClient,
          );
          Result deleteRes =
              await apiRepository.delete(url: testUrl, body: testBody);
          deleteRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpBadRequestError>()),
          );
        },
      );
      test(
        'it should return failure with a HttpUnauthorizedError, if it throw a DioException with response.statusCode = 401, when delete is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockDeleteStorageResult(
            result: const Success(true),
            repository: localStorageRepository,
          );
          mockDeleteThrowException(
            exception: testBadResponseCode401DioExcepion,
            httpClient: httpClient,
          );
          Result deleteRes =
              await apiRepository.delete(url: testUrl, body: testBody);
          deleteRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpUnauthorizedError>()),
          );
        },
      );
      test(
        'it should call localStorageRepository.delete with key: StorageKey.authToken, if it throw a DioException with response.statusCode = 401, when delete is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockDeleteStorageResult(
            result: const Success(true),
            repository: localStorageRepository,
          );
          mockDeleteThrowException(
            exception: testBadResponseCode401DioExcepion,
            httpClient: httpClient,
          );
          await apiRepository.delete(url: testUrl, body: testBody);
          verify(
            () => localStorageRepository.delete(key: StorageKey.authToken),
          );
        },
      );
      test(
        'It should emit a SignedOut state, if state is Authenticated, and if it throw a DioException with response.statusCode = 401, when delete is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockDeleteStorageResult(
            result: const Success(true),
            repository: localStorageRepository,
          );
          mockDeleteThrowException(
            exception: testBadResponseCode401DioExcepion,
            httpClient: httpClient,
          );
          List<ApiState> emittedStates = [];
          apiRepository.setSeedState(const Authenticated());
          apiRepository.addListener((state) {
            emittedStates.add(state);
          });
          await apiRepository.delete(url: testUrl, body: testBody);
          expect(emittedStates, const [
            Authenticated(),
            SignedOut(),
          ]);
        },
      );
      test(
        'It shouldnt emit any state, if state is not Authenticated, and if it throw a DioException with response.statusCode = 401, when delete is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockDeleteStorageResult(
            result: const Success(true),
            repository: localStorageRepository,
          );
          mockDeleteThrowException(
            exception: testBadResponseCode401DioExcepion,
            httpClient: httpClient,
          );
          List<ApiState> emittedStates = [];
          apiRepository.setSeedState(const Unauthenticated());
          apiRepository.addListener((state) {
            emittedStates.add(state);
          });
          await apiRepository.delete(url: testUrl, body: testBody);
          expect(emittedStates, const [Unauthenticated()]);
        },
      );
    },
  );
  group(
    'get',
    () {
      test(
        'It should return Success(response.data), if no exception is thrown',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockGetResponse(
            response: testResponse,
            httpClient: httpClient,
          );
          Result getRes = await apiRepository.get(
            url: testUrl,
            queryParams: testQueryParams,
          );
          expect(getRes, const Success<dynamic>(testResponseData));
        },
      );
      test(
        'it should return failure with a HttpUnkownError, if it throw a general exception when get is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockGetThrowException(
            exception: testGeneralException,
            httpClient: httpClient,
          );
          Result getRes = await apiRepository.get(
              url: testUrl, queryParams: testQueryParams);
          getRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpUnknownError>()),
          );
        },
      );
      test(
        'it should return failure with a HttpForbiddenError, if it throw a DioException with response.statusCode = 403, when get is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockGetThrowException(
            exception: testBadResponseCode403DioExcepion,
            httpClient: httpClient,
          );
          Result getRes = await apiRepository.get(
              url: testUrl, queryParams: testQueryParams);
          getRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpForbiddenError>()),
          );
        },
      );
      test(
        'it should return failure with a HttpNotFoundError, if it throw a DioException with response.statusCode = 404, when get is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockGetThrowException(
            exception: testBadResponseCode404DioExcepion,
            httpClient: httpClient,
          );
          Result getRes = await apiRepository.get(
              url: testUrl, queryParams: testQueryParams);
          getRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpNotFoundError>()),
          );
        },
      );
      test(
        'it should return failure with a HttpGoneError, if it throw a DioException with response.statusCode = 410, when get is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockGetThrowException(
            exception: testBadResponseCode410DioExcepion,
            httpClient: httpClient,
          );
          Result getRes = await apiRepository.get(
              url: testUrl, queryParams: testQueryParams);
          getRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpGoneError>()),
          );
        },
      );
    },
  );
  group(
    'patch',
    () {
      test(
        'It should return Success(response.data), if no exception is thrown',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPatchResponse(
            response: testResponse,
            httpClient: httpClient,
          );
          Result patchRes = await apiRepository.patch(
            url: testUrl,
            body: testBody,
          );
          expect(patchRes, const Success<dynamic>(testResponseData));
        },
      );
      test(
        'It should return Success(response.data), if no exception is thrown when passing a file parameter',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPatchResponse(
            response: testResponse,
            httpClient: httpClient,
            file: testFile,
          );
          Result patchRes = await apiRepository.patch(
            url: testUrl,
            body: testBody,
            file: testFile,
          );
          expect(patchRes, const Success<dynamic>(testResponseData));
        },
      );
      test(
        'it should return failure with a HttpUnkownError, if it throw a general exception when patch is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPatchThrowException(
            exception: testGeneralException,
            httpClient: httpClient,
          );
          Result patchRes = await apiRepository.patch(
            url: testUrl,
            body: testBody,
          );
          patchRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpUnknownError>()),
          );
        },
      );
      test(
        'it should return failure with a UnprocessableEntityError, if it throw a DioException with response.statusCode = 422, when get is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPatchThrowException(
            exception: testBadResponseCode422DioExcepion,
            httpClient: httpClient,
          );
          Result patchRes =
              await apiRepository.patch(url: testUrl, body: testBody);
          patchRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) =>
                expect(error, isA<UnprocessableEntityError>()),
          );
        },
      );
    },
  );
  group(
    'post',
    () {
      test(
        'It should return Success(response.data), if no exception is thrown',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPostResponse(
            response: testResponse,
            httpClient: httpClient,
          );
          Result postRes = await apiRepository.post(
            url: testUrl,
            body: testBody,
          );
          expect(postRes, const Success<dynamic>(testResponseData));
        },
      );
      test(
        'It should return Success(response.data), if no exception is thrown when passing a file parameter',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPostResponse(
            response: testResponse,
            httpClient: httpClient,
            file: testFile,
          );
          Result postRes = await apiRepository.post(
            url: testUrl,
            body: testBody,
            file: testFile,
          );
          expect(postRes, const Success<dynamic>(testResponseData));
        },
      );
      test(
        'it should return failure with a HttpUnkownError, if it throw a general exception when post is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPostThrowException(
            exception: testGeneralException,
            httpClient: httpClient,
          );
          Result postRes = await apiRepository.post(
            url: testUrl,
            body: testBody,
          );
          postRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpUnknownError>()),
          );
        },
      );
      test(
        'it should return failure with a UnprocessableEntityError, if it throw a DioException with response.statusCode = 500, when post is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPostThrowException(
            exception: testBadResponseCode500DioExcepion,
            httpClient: httpClient,
          );
          Result postRes =
              await apiRepository.post(url: testUrl, body: testBody);
          postRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpInternalServerError>()),
          );
        },
      );
    },
  );
  group(
    'put',
    () {
      test(
        'It should return Success(response.data), if no exception is thrown',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPutResponse(
            response: testResponse,
            httpClient: httpClient,
          );
          Result putRes = await apiRepository.put(
            url: testUrl,
            body: testBody,
          );
          expect(putRes, const Success<dynamic>(testResponseData));
        },
      );
      test(
        'it should return failure with a HttpUnkownError, if it throw a general exception when put is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPutThrowException(
            exception: testGeneralException,
            httpClient: httpClient,
          );
          Result putRes = await apiRepository.put(
            url: testUrl,
            body: testBody,
          );
          putRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpUnknownError>()),
          );
        },
      );
      test(
        'it should return failure with a UnprocessableEntityError, if it throw a DioException with response.statusCode = 500, when put is called',
        () async {
          mockReadStorageResult(
            result: const Success(testToken),
            repository: localStorageRepository,
          );
          mockPutThrowException(
            exception: testBadResponseCode500DioExcepion,
            httpClient: httpClient,
          );
          Result putRes = await apiRepository.put(url: testUrl, body: testBody);
          putRes.handle(
            onSuccess: (_) => fail('unexpected succes'),
            onFailure: (error) => expect(error, isA<HttpInternalServerError>()),
          );
        },
      );
    },
  );
  group(
    'signIn',
    () {
      test(
        'It should emit a state Authenticated when calling the mock method signIn',
        () async {
          List<ApiState> emittedStates = [];
          apiRepository.setSeedState(const Unauthenticated());
          apiRepository.addListener((state) {
            emittedStates.add(state);
          });
          await apiRepository.signIn(testSignInForm);
          expect(emittedStates, const [
            Unauthenticated(),
            Authenticated(),
          ]);
        },
      );
    },
  );
}
