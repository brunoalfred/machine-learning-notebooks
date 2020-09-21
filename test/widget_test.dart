














// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ProviderShopper_Flutter/main.dart';

void main() {
  testWidgets('smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Navigating through login page.
    await tester.tap(find.text('ENTER'));
    await tester.pumpAndSettle();

    // Check that shopping cart is empty at start.
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pumpAndSettle();
    expect(find.text('\$0'), findsOneWidget);

    // Buy an item.
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.text('ADD').first);

    // Check that the shopping cart is not empty anymore.
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pumpAndSettle();
    expect(find.text('\$0'), findsNothing);
  });
}


























//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// import 'package:ProviderShopper_Flutter/main.dart';
//
// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     await tester.pumpWidget(MyApp());
//
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);
//
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();
//
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }
