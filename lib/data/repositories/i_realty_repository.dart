import 'package:realestate/data/data_sources/realty_remote_data_source.dart';
import 'package:realestate/data/mappers/realty_mapper.dart';
import 'package:realestate/domain/entities/realty.dart';
import 'package:realestate/domain/repositories/realty_repository.dart';

class IRealtyRepository implements RealtyRepository {
  IRealtyRepository(this.remoteDataSource);

  final RealtyRemoteDataSource remoteDataSource;

  @override
  Future<Realty> getRealty(String id) async {
    final dto = await remoteDataSource.getRealty(id);

    final entity = RealtyMapper().fromDTOToEntity(dto);

    return entity;
  }
}
