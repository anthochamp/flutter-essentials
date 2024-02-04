// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/widgets.dart';

enum WidgetStatus {
  error,
  loading,
  loaded,
}

WidgetStatus? composeWidgetStatusFromAsyncSnapshot(AsyncSnapshot snapshot) {
  switch (snapshot.connectionState) {
    case ConnectionState.none:
      return null;

    case ConnectionState.waiting:
    case ConnectionState.active:
      return WidgetStatus.loading;

    case ConnectionState.done:
      return snapshot.hasError ? WidgetStatus.error : WidgetStatus.loaded;
  }
}
