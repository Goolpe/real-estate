import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:realestate/core/http_client/http_client.dart';
import 'package:realestate/data/data_sources/realty_remote_data_source.dart';
import 'package:realestate/data/repositories/i_realty_repository.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  ServiceLocator() {
    _init();
  }

  factory ServiceLocator.init() {
    return ServiceLocator();
  }

  void _init() {
    final httpClient = IHttpClient(http.Client());

    getIt.registerSingleton<IRealtyRepository>(
        IRealtyRepository(IRealtyRemoteDataSource(httpClient)));
  }
}
