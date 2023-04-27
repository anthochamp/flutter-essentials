import 'package:flutter/material.dart';

extension MaterialLocalizationsBuildContextExtension on BuildContext {
  MaterialLocalizations get materialL10n =>
      Localizations.of<MaterialLocalizations>(this, MaterialLocalizations)!;
}
