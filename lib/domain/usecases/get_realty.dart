import 'package:realestate/core/utils/usecase.dart';
import 'package:realestate/domain/entities/realty.dart';
import 'package:realestate/domain/repositories/realty_repository.dart';

class GetRealty implements UseCase<Realty, GetRealtyParams> {
  GetRealty(this.respository);

  final RealtyRepository respository;

  @override
  Future<Realty> call(GetRealtyParams params) {
    return respository.getRealty(params.id);
  }
}

class GetRealtyParams {
  GetRealtyParams(this.id);

  final String id;
}
