import 'package:flutter/cupertino.dart';

extension CupertinoLocalizationsBuildContextExtension on BuildContext {
  CupertinoLocalizations get cupertinoL10n =>
      Localizations.of<CupertinoLocalizations>(this, CupertinoLocalizations)!;
}
