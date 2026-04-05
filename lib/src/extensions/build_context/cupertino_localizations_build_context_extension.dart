// SPDX-FileCopyrightText: © 2023 - 2026 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/cupertino.dart';

extension CupertinoLocalizationsBuildContextExtension on BuildContext {
  CupertinoLocalizations get cupertinoL10n {
    final result = Localizations.of<CupertinoLocalizations>(
      this,
      CupertinoLocalizations,
    );
    if (result == null) {
      throw FlutterError(
        'No CupertinoLocalizations found in the widget tree.\n'
        'Ensure a CupertinoApp or a CupertinoLocalizations delegate is present '
        'as an ancestor of this BuildContext.',
      );
    }
    return result;
  }
}
