// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/cupertino.dart';

extension CupertinoLocalizationsBuildContextExtension on BuildContext {
  CupertinoLocalizations get cupertinoL10n =>
      Localizations.of<CupertinoLocalizations>(this, CupertinoLocalizations)!;
}
