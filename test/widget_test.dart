import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:calories_flutter/main.dart';

void main() {
  testWidgets('App should render', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: CaloriesApp(),
      ),
    );

    // Verify that the app renders without crashing
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
