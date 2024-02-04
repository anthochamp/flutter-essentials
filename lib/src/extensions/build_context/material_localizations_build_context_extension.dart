// SPDX-FileCopyrightText: © 2023 - 2024 Anthony Champagne <dev@anthonychampagne.fr>
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

extension MaterialLocalizationsBuildContextExtension on BuildContext {
  MaterialLocalizations get materialL10n =>
      Localizations.of<MaterialLocalizations>(this, MaterialLocalizations)!;
}
