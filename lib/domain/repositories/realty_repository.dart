import 'package:realestate/domain/entities/realty.dart';

abstract class RealtyRepository {
  Future<Realty> getRealty(String id);
}
