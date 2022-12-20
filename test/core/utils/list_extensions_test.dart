import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realestate/core/utils/utils.dart';

void main() {
  group('ListExtensions separated', () {
    const separator = SizedBox(key: Key('separator'));
    const widget = SizedBox(key: Key('widget'));

    test('should return empty list on [](empty list)', () {
      final result = <Widget>[].separated(separator).toList();

      expect(result, <Widget>[]);
    });

    test('should return one item in list on one item in the list', () {
      final result = <Widget>[widget].separated(separator).toList();

      expect(result, <Widget>[widget]);
    });

    test(
        'should return two items and separator between them on two items in the list',
        () {
      final result = <Widget>[widget, widget].separated(separator).toList();

      expect(result, <Widget>[widget, separator, widget]);
    });
  });
}
