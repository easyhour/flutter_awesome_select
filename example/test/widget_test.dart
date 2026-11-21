import 'package:brilliant_select_example/features_option/option_list_of_string.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  testWidgets('example changes sort order through standalone Material dialog', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: FeaturesOptionListOfString())),
    );
    await tester.pumpAndSettle();
    expect(find.text('Low Price'), findsOneWidget);
    await tester.tap(find.text('Sort By'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Newest'));
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsNothing);
    expect(find.text('Newest'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
