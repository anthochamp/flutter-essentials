import 'dart:ui';

import 'package:posix_locale/posix_locale.dart';
import 'package:unicode_locale_id/unicode_locale_id.dart';

extension LocaleExtension on Locale {
  Locale fromUnicodeCldrLocaleId(String localeId) {
    final unicodeBcp47LocaleId = UnicodeCldrLocaleId.parse(localeId).toBcp47();

    return Locale.fromSubtags(
      languageCode: unicodeBcp47LocaleId.language,
      scriptCode: unicodeBcp47LocaleId.script,
      countryCode: unicodeBcp47LocaleId.region,
    );
  }

  Locale fromUnicodeBcp47LocaleId(String localeId) {
    final unicodeBcp47LocaleId = UnicodeBcp47LocaleId.parse(localeId);

    return Locale.fromSubtags(
      languageCode: unicodeBcp47LocaleId.language,
      scriptCode: unicodeBcp47LocaleId.script,
      countryCode: unicodeBcp47LocaleId.region,
    );
  }

  Locale fromPosixLocaleLang(String posixLocaleLang) {
    final posixLocale = PosixLocaleLang.parse(posixLocaleLang);

    // TODO: https://wiki.openoffice.org/wiki/LocaleMapping#Mapping_Unix_Locale_Identifiers_to_BCP-47

    return Locale.fromSubtags(
      languageCode: posixLocale.language,
      scriptCode: null,
      countryCode: posixLocale.territory,
    );
  }
}
