import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:http/http.dart' as http;
import 'package:realestate/core/api/api.dart';
import 'package:realestate/core/http_client/exceptions.dart';
import 'package:realestate/core/http_client/http_client.dart';

import 'http_client_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late MockClient mockClient;
  late HttpClient client;

  const id = 'test';
  final path = API.objectData(id);
  final url = Uri.parse(path);

  setUp(() {
    mockClient = MockClient();
    client = IHttpClient(mockClient);
  });

  request() => client.get(path, parseJson: (data) => {});

  mockRequest() => mockClient.get(url);

  group('HttpClient get', () {
    test('should return mockJson on 200 status code', () async {
      const mockJson = '{}';

      when(mockRequest()).thenAnswer((_) async => http.Response(mockJson, 200));

      expect(await request(), jsonDecode(mockJson));
    });

    test('should throw ClientException on 402 status code', () async {
      when(mockRequest()).thenAnswer((_) async => http.Response('', 402));

      expect(request(), throwsA(const TypeMatcher<ClientException>()));
    });

    test('should throw NotFoundException on 404 status code', () async {
      when(mockRequest()).thenAnswer((_) async => http.Response('', 404));

      expect(request(), throwsA(const TypeMatcher<NotFoundException>()));
    });

    test('should throw ServerException on 500 status code', () async {
      when(mockRequest()).thenAnswer((_) async => http.Response('', 500));

      expect(request(), throwsA(const TypeMatcher<ServerException>()));
    });

    test('should throw UnknownException on 600 statusCode', () async {
      when(mockRequest()).thenAnswer((_) async => http.Response('', 600));

      expect(request(), throwsA(const TypeMatcher<UnknownException>()));
    });

    test('should throw TimeOverException on timeout', () async {
      when(mockRequest()).thenThrow(TimeoutException('timeout'));

      expect(request(), throwsA(const TypeMatcher<TimeOverException>()));
    });

    test('should throw NoInternetException on socket exception', () async {
      when(mockRequest()).thenThrow(const SocketException('socket'));

      expect(request(), throwsA(const TypeMatcher<NoInternetException>()));
    });

    test('should throw UnknownException on exception', () async {
      when(mockRequest()).thenThrow(Exception());

      expect(request(), throwsA(const TypeMatcher<UnknownException>()));
    });
  });
}
