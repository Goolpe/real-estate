import 'dart:async';
import 'bloc.dart';

abstract class Bloc<S extends BlocState> {
  Bloc(S state) {
    emit(state);
  }

  final _controller = StreamController<S>();

  Stream<S> get stream => _controller.stream;

  void emit(S data) {
    _controller.add(data);
  }

  void dispose() {
    _controller.close();
  }
}
