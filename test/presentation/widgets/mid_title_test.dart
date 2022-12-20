import 'package:flutter_test/flutter_test.dart';
import 'package:realestate/presentation/widgets/widgets.dart';

import '../../utils.dart';

void main() {
  group('MidTitle', () {
    testWidgets('should return one widget on empty value', (tester) async {
      const widget = MidTitle('');

      await tester.forceAndSettle(widget);

      expect(find.text(''), findsOneWidget);
    });

    testWidgets('should return one widget on filled value', (tester) async {
      const widget = MidTitle('title');

      await tester.forceAndSettle(widget);

      expect(find.text('title'), findsOneWidget);
    });
  });
}
