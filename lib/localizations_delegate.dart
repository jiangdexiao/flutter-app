import 'dart:async';

import 'package:flutter/widgets.dart';
import './app_strings.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppStrings> {
  @override
  Future<AppStrings> load(Locale locale) {
    return AppStrings.load(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      ['zh', 'en'].contains(locale.languageCode); // 支持的类型要包含App中注册的类型

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}