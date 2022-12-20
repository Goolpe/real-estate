import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension WidgetTesterExt on WidgetTester {
  Future<void> forceAndSettle(Widget widget) async {
    await pumpWidget(MaterialApp(
      home: Material(child: widget),
    ));
    await pumpAndSettle();
  }
}
