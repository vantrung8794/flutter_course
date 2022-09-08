import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'shared_pref_helper.dart';

class LocaleConstants {
  LocaleConstants._();

  static const japanese = 'ja';
  static const english = 'en';
  static const enUS = 'en_US';
}

class LocaleHelper {
  LocaleHelper._();

  static String localeKey = 'localeKey';

  static LocaleHelper get instance => LocaleHelper._();
  static Locale locale = const Locale(LocaleConstants.japanese);

  bool isEnglish(BuildContext context) {
    final currentLocale = locale.toString();
    return currentLocale == LocaleConstants.english ||
        currentLocale == LocaleConstants.enUS;
  }

  List<Locale> get supportedLocales =>
      const [Locale(LocaleConstants.japanese), Locale(LocaleConstants.english)];

  Locale get fallbackLocale => const Locale(LocaleConstants.japanese);

  Future<Locale> getDefaultLocale() async {
    final cachedLocale =
        await SharePrefHelper.instance.getValue(key: localeKey) as String?;
    final _locale = Locale(cachedLocale ?? LocaleConstants.japanese);
    locale = _locale;
    return _locale;
  }

  Future<String?> getDefaultLocaleString() async {
    final cachedLocale =
        await SharePrefHelper.instance.getValue(key: localeKey) as String?;
    return cachedLocale;
  }

  Future<void> setDefaultLocale(BuildContext context,
      {required String localeString}) async {
    final _ =
        await SharePrefHelper.instance.setValue(localeString, key: localeKey);
    final _locale = Locale(localeString);
    locale = _locale;
    await context.setLocale(_locale);
  }
}
