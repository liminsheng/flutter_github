import 'package:flutter/material.dart';
import 'package:flutter_github/l10n/messages_all.dart';
import 'package:intl/intl.dart';

class GmLocalizations {
  static Future<GmLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return new GmLocalizations();
    });
  }

  static GmLocalizations of(BuildContext context) {
    return Localizations.of(context, GmLocalizations);
  }

  String get title {
    return Intl.message('Github Client',
        name: 'title', desc: 'Title for the application');
  }

  String get home {
    return Intl.message('Github Client',
        name: 'home', desc: '');
  }

  String get login {
    return Intl.message('Login',
        name: 'login', desc: '');
  }

  String get noDescription {
    return Intl.message('No description',
        name: 'noDescription', desc: '');
  }

  String get theme {
    return Intl.message('Theme',
        name: 'theme', desc: '');
  }

  String get language {
    return Intl.message('Language',
        name: 'language', desc: '');
  }

  String get logout {
    return Intl.message('Logout',
        name: 'logout', desc: '');
  }

  String get logoutTip {
    return Intl.message('Are you sure logout ?',
        name: 'logoutTip', desc: '');
  }

  String get yes {
    return Intl.message('Yes',
        name: 'yes', desc: '');
  }

  String get cancel {
    return Intl.message('Cancel',
        name: 'cancel', desc: '');
  }

  String get userName {
    return Intl.message('User name',
        name: 'userName', desc: '');
  }

  String get userNameOrEmail {
    return Intl.message('User name or email',
        name: 'userNameOrEmail', desc: '');
  }

  String get userNameRequired {
    return Intl.message('User name can\'t be empty',
        name: 'userNameRequired', desc: '');
  }

  String get password {
    return Intl.message('Password',
        name: 'password', desc: '');
  }

  String get passwordRequired {
    return Intl.message('Password can\'t be empty',
        name: 'passwordRequired', desc: '');
  }

  String get userNameOrPasswordWrong {
    return Intl.message('User name or password wrong',
        name: 'userNameOrPasswordWrong', desc: '');
  }

  String get loginWaiting {
    return Intl.message('Login...',
        name: 'loginWaiting', desc: '');
  }

}

class GmLocalizationsDelegate extends LocalizationsDelegate<GmLocalizations> {
  GmLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'zh'].contains(locale.languageCode);
  }

  @override
  Future<GmLocalizations> load(Locale locale) {
    return GmLocalizations.load(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate old) => false;
}
