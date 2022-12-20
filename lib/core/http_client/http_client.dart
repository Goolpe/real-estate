import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:realestate/core/http_client/exceptions.dart';

abstract class HttpClient {
  Future<T> get<T, J>(String url, {required T Function(J data) parseJson});
}

class IHttpClient implements HttpClient {
  IHttpClient(this.client);

  final http.Client client;

  @override
  Future<T> get<T, J>(
    String url, {
    required T Function(J data) parseJson,
  }) async {
    try {
      final response = await client.get(Uri.parse(url));
      final statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode < 300) {
        final decodedBody = jsonDecode(response.body) as J;
        return parseJson(decodedBody);
      } else if (statusCode == 404) {
        throw NotFoundException();
      } else if (statusCode >= 400 && statusCode < 500) {
        throw ClientException(response.body);
      } else if (statusCode >= 500 && statusCode < 600) {
        throw ServerException(response.body);
      } else {
        throw UnknownException(response.body);
      }
    } on HttpException catch (_) {
      rethrow;
    } on SocketException catch (_) {
      throw NoInternetException();
    } on TimeoutException catch (_) {
      throw TimeOverException();
    } on Exception catch (error) {
      throw UnknownException(error.toString());
    }
  }
}
