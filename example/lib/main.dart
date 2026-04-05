// SPDX-FileCopyrightText: © 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:ac_flutter_essentials/ac_flutter_essentials.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ac_flutter_essentials example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // A future that completes after 2 seconds with a greeting message.
  static final Future<String> _greetingFuture = Future.delayed(
    const Duration(seconds: 2),
    () => 'Hello from ac_flutter_essentials!',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_essentials example')),
      body: Center(
        child: FutureBuilder<String>(
          future: _greetingFuture,
          builder: (context, snapshot) {
            final status = composeWidgetStatusFromAsyncSnapshot(snapshot);

            return switch (status) {
              null => const VoidWidget(),
              WidgetStatus.loading => const CircularProgressIndicator(),
              WidgetStatus.error => Text(
                  'Error: ${snapshot.error}',
                  style: const TextStyle(color: Colors.red),
                ),
              WidgetStatus.loaded => Text(
                  snapshot.data!,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
            };
          },
        ),
      ),
    );
  }
}
