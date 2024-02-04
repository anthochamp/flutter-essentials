// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'dart:async';

import 'package:flutter/widgets.dart';

export 'package:flutter/widgets.dart' show AppLifecycleState;

class _ObserverStream extends Stream<AppLifecycleState>
    with WidgetsBindingObserver {
  final _streamController = StreamController<AppLifecycleState>.broadcast();

  @override
  StreamSubscription<AppLifecycleState> listen(
    void Function(AppLifecycleState event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) =>
      _streamController.stream.listen(onData,
          onError: onError, onDone: onDone, cancelOnError: cancelOnError);

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    _streamController.add(state);
  }
}

class AppLifecycleStream extends Stream<AppLifecycleState> {
  static final _observersFinalizer = Finalizer<_ObserverStream>(
      (observer) => WidgetsBinding.instance.removeObserver(observer));

  AppLifecycleStream() {
    _observersFinalizer.attach(this, _observer);

    WidgetsBinding.instance.addObserver(_observer);
  }

  final _observer = _ObserverStream();

  @override
  StreamSubscription<AppLifecycleState> listen(
    void Function(AppLifecycleState event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _observer.listen(onData,
        onError: onError, onDone: onDone, cancelOnError: cancelOnError);
  }

  AppLifecycleState? getValue() => WidgetsBinding.instance.lifecycleState;

  bool isActive() => getValue() == AppLifecycleState.resumed;
  bool isInactive() => !isActive();
  bool isInForeground() =>
      getValue() == AppLifecycleState.resumed ||
      getValue() == AppLifecycleState.inactive;
  bool isInBackground() => !isInForeground();
  bool isDetached() => getValue() == AppLifecycleState.detached;
}
