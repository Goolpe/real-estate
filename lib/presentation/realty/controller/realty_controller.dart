import 'package:realestate/core/api/api.dart';
import 'package:realestate/core/bloc/bloc.dart';
import 'package:realestate/domain/repositories/realty_repository.dart';
import 'package:realestate/domain/usecases/get_realty.dart';
import 'package:realestate/presentation/realty/controller/realty_state.dart';

class RealtyController extends Bloc<RealtyState> {
  RealtyController(this._repository) : super(RealtyLoadingState()) {
    _getRealRealty();
  }

  final RealtyRepository _repository;

  Future<void> _getRealRealty() async {
    final getRealty = GetRealty(_repository);

    final data = await getRealty(GetRealtyParams(API.id));

    emit(RealtySuccessState(data));
  }

  Future<void> refresh() async {
    emit(RealtyLoadingState());
    await _getRealRealty();
  }
}
