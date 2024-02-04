// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

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
