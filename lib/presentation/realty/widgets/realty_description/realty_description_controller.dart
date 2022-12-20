import 'package:realestate/core/bloc/bloc.dart';
import 'package:realestate/presentation/realty/widgets/realty_description/realty_description_state.dart';

class RealtyDescriptionController extends Bloc<RealtyDescState> {
  RealtyDescriptionController(this.description) : super(RealtyDescInitState()) {
    _setShortDesc();
  }

  final String description;
  static const shortDescLength = 300;

  void _setShortDesc() {
    if (description.length <= shortDescLength) {
      setFullDesc();
    } else {
      final shortDescription = description.substring(0, shortDescLength);
      emit(RealtyDescShortState(shortDescription));
    }
  }

  void setFullDesc() {
    emit(RealtyDescFullState(description));
  }
}
