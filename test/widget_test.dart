import 'package:flutter_test/flutter_test.dart';
import 'package:smart_medicine_reminder/main.dart';

void main() {
  testWidgets('Smart Medicine Reminder app test',
      (WidgetTester tester) async {
    await tester.pumpWidget(const SmartMedicineApp());

    expect(find.text('Smart Medicine'), findsOneWidget);
  });
}