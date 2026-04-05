// SPDX-FileCopyrightText: © 2023 - 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ac_flutter_essentials/ac_flutter_essentials.dart';

void main() {
  group('composeWidgetStatusFromAsyncSnapshot', () {
    test('returns null for ConnectionState.none', () {
      const snapshot = AsyncSnapshot<int>.nothing();
      expect(composeWidgetStatusFromAsyncSnapshot(snapshot), isNull);
    });

    test('returns loading for ConnectionState.waiting', () {
      const snapshot = AsyncSnapshot<int>.waiting();
      expect(
        composeWidgetStatusFromAsyncSnapshot(snapshot),
        equals(WidgetStatus.loading),
      );
    });

    test('returns loading for ConnectionState.active', () {
      const snapshot = AsyncSnapshot<int>.withData(
        ConnectionState.active,
        42,
      );
      expect(
        composeWidgetStatusFromAsyncSnapshot(snapshot),
        equals(WidgetStatus.loading),
      );
    });

    test('returns loaded for ConnectionState.done without error', () {
      const snapshot = AsyncSnapshot<int>.withData(ConnectionState.done, 42);
      expect(
        composeWidgetStatusFromAsyncSnapshot(snapshot),
        equals(WidgetStatus.loaded),
      );
    });

    test('returns error for ConnectionState.done with error', () {
      final snapshot = AsyncSnapshot<int>.withError(
        ConnectionState.done,
        Exception('fail'),
      );
      expect(
        composeWidgetStatusFromAsyncSnapshot(snapshot),
        equals(WidgetStatus.error),
      );
    });
  });

  group('VoidWidget', () {
    testWidgets('builds without error in a widget tree', (tester) async {
      await tester.pumpWidget(const VoidWidget());
      // VoidWidget produces no visual element; simply verifying it builds.
    });
  });
}
