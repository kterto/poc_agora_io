import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements Dio {}

void mockDeleteResponse({
  required Response response,
  required MockHttpClient httpClient,
}) {
  when(() => httpClient.delete(
        any<String>(),
        data: any(named: 'data'),
        options: any<Options>(named: 'options'),
      )).thenAnswer((_) async => response);
}

void mockDeleteThrowException({
  required Exception exception,
  required MockHttpClient httpClient,
}) {
  when(() => httpClient.delete(
        any<String>(),
        data: any(named: 'data'),
        options: any<Options>(named: 'options'),
      )).thenThrow(exception);
}

void mockGetResponse({
  required Response response,
  required MockHttpClient httpClient,
}) {
  when(() => httpClient.get(
        any<String>(),
        queryParameters: any<Map<String, dynamic>>(named: 'queryParameters'),
        options: any<Options>(named: 'options'),
      )).thenAnswer((_) async => response);
}

void mockGetThrowException({
  required Exception exception,
  required MockHttpClient httpClient,
}) {
  when(() => httpClient.get(
        any<String>(),
        queryParameters: any<Map<String, dynamic>>(named: 'queryParameters'),
        options: any<Options>(named: 'options'),
      )).thenThrow(exception);
}

void mockPatchResponse({
  required Response response,
  required MockHttpClient httpClient,
  File? file,
}) {
  when(() => httpClient.patch(
        any<String>(),
        data: file != null
            ? any<FormData>(named: 'data')
            : any<Map<String, dynamic>>(named: 'data'),
        options: any<Options>(named: 'options'),
      )).thenAnswer((_) async => response);
}

void mockPatchThrowException({
  required Exception exception,
  required MockHttpClient httpClient,
}) {
  when(() => httpClient.patch(
        any<String>(),
        data: any<Map<String, dynamic>>(named: 'data'),
        options: any<Options>(named: 'options'),
      )).thenThrow(exception);
}

void mockPostResponse({
  required Response response,
  required MockHttpClient httpClient,
  File? file,
}) {
  when(() => httpClient.post(
        any<String>(),
        data: file != null
            ? any<FormData>(named: 'data')
            : any<Map<String, dynamic>>(named: 'data'),
        options: any<Options>(named: 'options'),
      )).thenAnswer((_) async => response);
}

void mockPostThrowException({
  required Exception exception,
  required MockHttpClient httpClient,
}) {
  when(() => httpClient.post(
        any<String>(),
        data: any<Map<String, dynamic>>(named: 'data'),
        options: any<Options>(named: 'options'),
      )).thenThrow(exception);
}

void mockPutResponse({
  required Response response,
  required MockHttpClient httpClient,
}) {
  when(() => httpClient.put(
        any<String>(),
        data: any<Map<String, dynamic>>(named: 'data'),
        options: any<Options>(named: 'options'),
      )).thenAnswer((_) async => response);
}

void mockPutThrowException({
  required Exception exception,
  required MockHttpClient httpClient,
}) {
  when(() => httpClient.put(
        any<String>(),
        data: any<Map<String, dynamic>>(named: 'data'),
        options: any<Options>(named: 'options'),
      )).thenThrow(exception);
}
