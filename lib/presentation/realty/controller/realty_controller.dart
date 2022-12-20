import 'package:realestate/core/bloc/bloc.dart';
import 'package:realestate/core/http_client/exceptions.dart';
import 'package:realestate/domain/repositories/realty_repository.dart';
import 'package:realestate/domain/usecases/get_realty.dart';
import 'package:realestate/presentation/realty/controller/realty_state.dart';

class RealtyController extends Bloc<RealtyState> {
  RealtyController(this._repository, this.id) : super(RealtyLoadingState()) {
    _getRealRealty();
  }

  final String id;
  final RealtyRepository _repository;

  Future<void> _getRealRealty() async {
    final getRealty = GetRealty(_repository);

    try {
      final data = await getRealty(GetRealtyParams(id));

      emit(RealtySuccessState(data));
    } on HttpException catch (error) {
      emit(RealtyErrorState(error.message));
    }
  }

  Future<void> refresh() async {
    emit(RealtyLoadingState());
    await _getRealRealty();
  }
}
