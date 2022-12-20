import 'package:flutter_test/flutter_test.dart';
import 'package:realestate/presentation/widgets/widgets.dart';

import '../../utils.dart';

void main() {
  group('LargeTitle', () {
    testWidgets('should return one widget on empty value', (tester) async {
      const widget = LargeTitle('');

      await tester.forceAndSettle(widget);

      expect(find.text(''), findsOneWidget);
    });

    testWidgets('should return one widget on filled value', (tester) async {
      const widget = LargeTitle('title');

      await tester.forceAndSettle(widget);

      expect(find.text('title'), findsOneWidget);
    });
  });
}
