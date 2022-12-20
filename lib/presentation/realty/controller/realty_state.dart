import 'package:realestate/core/bloc/bloc.dart';
import 'package:realestate/domain/entities/realty.dart';

abstract class RealtyState extends BlocState {}

class RealtyLoadingState extends RealtyState {}

class RealtyInitState extends RealtyState {}

class RealtyErrorState extends RealtyState {
  RealtyErrorState(this.error);

  final String error;
}

class RealtySuccessState extends RealtyState {
  RealtySuccessState(this.data);

  final Realty data;
}
