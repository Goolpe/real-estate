import 'package:flutter/material.dart';

extension ListExt on List<Widget> {
  Iterable<Widget> separated(Widget separator) sync* {
    for (var i = 0; i < length; i++) {
      yield this[i];
      if (i < length - 1) {
        yield separator;
      }
    }
  }
}
