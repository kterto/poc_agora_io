import 'dart:io';

import 'package:convenience_types/types/result.dart';
import 'package:flutter_base/src/shared/data/repositories_impl/api_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockApiRepository extends Mock implements ApiRepository {}

void mockApiGetResult<T>(
    {required Result result, required MockApiRepository repository}) {
  when(() => repository.get<T>(
        url: any<String>(named: 'url'),
        queryParams: any<Map<String, dynamic>>(named: 'queryParams'),
        errorResponseSerializer: any<T? Function(dynamic)?>(
          named: 'errorResponseSerializer',
        ),
      )).thenAnswer((_) async => result);
}

void mockApiPostResult<T>({
  required Result result,
  required MockApiRepository repository,
}) {
  when(() => repository.post<T>(
        url: any<String>(named: 'url'),
        body: any<Map<String, dynamic>>(named: 'body'),
        errorResponseSerializer: any<T? Function(dynamic)?>(
          named: 'errorResponseSerializer',
        ),
        file: any<File>(named: 'file'),
      )).thenAnswer((_) async => result);
}

void mockApiPatchResult<T>({
  required Result result,
  required MockApiRepository repository,
}) {
  when(() => repository.patch<T>(
        url: any<String>(named: 'url'),
        body: any<Map<String, dynamic>>(named: 'body'),
        errorResponseSerializer: any<T? Function(dynamic)?>(
          named: 'errorResponseSerializer',
        ),
        file: any<File>(named: 'file'),
      )).thenAnswer((_) async => result);
}

void mockApiDeleteResult<T>({
  required Result result,
  required MockApiRepository repository,
}) {
  when(() => repository.delete<T>(
        url: any<String>(named: 'url'),
        body: any<Map<String, dynamic>>(named: 'body'),
        errorResponseSerializer: any<T? Function(dynamic)?>(
          named: 'errorResponseSerializer',
        ),
      )).thenAnswer((_) async => result);
}
