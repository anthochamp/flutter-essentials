// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

extension MaterialLocalizationsBuildContextExtension on BuildContext {
  MaterialLocalizations get materialL10n =>
      Localizations.of<MaterialLocalizations>(this, MaterialLocalizations)!;
}
