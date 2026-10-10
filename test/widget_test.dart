import 'package:flutter_test/flutter_test.dart';
import 'package:smart_medicine_reminder/main.dart';

void main() {
  testWidgets('Smart Medicine Reminder app test',
      (WidgetTester tester) async {
    await tester.pumpWidget(const SmartMedicineApp());

    // Check that the splash screen appears.
    expect(find.text('Smart Medicine'), findsOneWidget);

    // Allow the splash screen timer to complete.
    await tester.pump(const Duration(seconds: 3));

    // Complete any pending animations and navigation.
    await tester.pumpAndSettle();

    // Check that the login screen is displayed.
    expect(find.text('Smart Medicine'), findsNothing);
  });
}