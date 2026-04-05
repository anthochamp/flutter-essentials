// SPDX-FileCopyrightText: © 2023 - 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

extension MaterialLocalizationsBuildContextExtension on BuildContext {
  MaterialLocalizations get materialL10n {
    final result = Localizations.of<MaterialLocalizations>(
      this,
      MaterialLocalizations,
    );
    if (result == null) {
      throw FlutterError(
        'No MaterialLocalizations found in the widget tree.\n'
        'Ensure a MaterialApp or a MaterialLocalizations delegate is present '
        'as an ancestor of this BuildContext.',
      );
    }
    return result;
  }
}
