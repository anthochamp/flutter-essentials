// Copyright 2023, Anthony Champagne. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

extension CupertinoLocalizationsBuildContextExtension on BuildContext {
  CupertinoLocalizations get cupertinoL10n =>
      Localizations.of<CupertinoLocalizations>(this, CupertinoLocalizations)!;
}
