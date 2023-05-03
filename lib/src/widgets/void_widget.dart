// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

class _Element extends Element {
  _Element(super.widget);

  @override
  bool get debugDoingBuild => false;
}

class VoidWidget extends Widget {
  const VoidWidget({super.key});

  @override
  Element createElement() => _Element(this);
}
