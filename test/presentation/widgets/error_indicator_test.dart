import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realestate/presentation/widgets/widgets.dart';

import '../../utils.dart';

void main() {
  group('ErrorIndicator', () {
    testWidgets('should return one widget on empty value', (tester) async {
      final widget = ErrorIndicator(
        error: '',
        onRefresh: () {},
      );

      await tester.forceAndSettle(widget);

      expect(find.text(''), findsOneWidget);
    });

    testWidgets('should return one widget on filled value', (tester) async {
      var value = 0;

      final widget = ErrorIndicator(
        error: 'error',
        onRefresh: () {
          ++value;
        },
      );

      await tester.forceAndSettle(widget);

      expect(find.text('error'), findsOneWidget);

      final refButton = find.byKey(const Key('Refresh'));

      await tester.tap(refButton);
      expect(value, 1);

      await tester.tap(refButton);
      expect(value, 2);
    });
  });
}
