// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
