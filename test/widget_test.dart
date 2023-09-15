import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firstcw/main.dart'; // Assuming this imports the Home widget

void main() {
  testWidgets('Home Widget Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: Home()));

    // Verify the presence of the FloatingActionButton with text "Click".
    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.text("Click"), findsOneWidget);
  });
}
