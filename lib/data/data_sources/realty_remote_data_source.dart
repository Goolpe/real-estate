import 'package:realestate/core/api/api.dart';
import 'package:realestate/core/http_client/http_client.dart';
import 'package:realestate/data/dto/realty_dto.dart';

abstract class RealtyRemoteDataSource {
  Future<RealtyDTO> getRealty(String id);
}

class IRealtyRemoteDataSource implements RealtyRemoteDataSource {
  IRealtyRemoteDataSource(this.client);

  final HttpClient client;

  @override
  Future<RealtyDTO> getRealty(String id) async {
    final dto = await client.get(
      API.objectData(id),
      parseJson: RealtyDTO.fromJson,
    );

    return dto;
  }
}
