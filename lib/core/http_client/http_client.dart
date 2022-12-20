import 'dart:convert';

import 'package:http/http.dart' as http;

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
    final response = await client.get(Uri.parse(url));
    final decodedBody = jsonDecode(response.body) as J;
    return parseJson(decodedBody);
  }
}
