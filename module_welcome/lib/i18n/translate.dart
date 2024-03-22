import 'dart:io';

import 'package:module_welcome/i18n/strings/pt_br.dart';

sealed class TranslateWelcome {
  static WelcomeStrings strings = _getType();

  static T _getType<T extends WelcomeStrings>() {
    switch (Platform.localeName) {
      case 'pt_BR':
        return WelcomePtBr() as T;
      case 'en_US':
        return WelcomePtBr() as T;
      default:
        return WelcomePtBr() as T;
    }
  }
}

abstract class WelcomeStrings {}
