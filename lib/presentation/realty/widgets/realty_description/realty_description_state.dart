import 'package:realestate/core/bloc/bloc.dart';

abstract class RealtyDescState extends BlocState {}

class RealtyDescInitState extends RealtyDescState {}

class RealtyDescFullState extends RealtyDescState {
  RealtyDescFullState(this.data);

  final String data;
}

class RealtyDescShortState extends RealtyDescState {
  RealtyDescShortState(this.data);

  final String data;
}
