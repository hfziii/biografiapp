import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../core/app_export.dart';
import 'en_us/en_us_translations.dart';

extension LocalizationExtension on String {
  String get tr => ApplicationLocalization.of().getString(this);
}

class ApplicationLocalization {
  ApplicationLocalization(this.locale);

  final Locale locale;

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': enUs,
  };

  static ApplicationLocalization of() {
    return Localizations.of<ApplicationLocalization>(
      NavigatorService.navigatorkey.currentContext!,
      ApplicationLocalization,
    )!;
  }

  static List<String> languages() => _localizedValues.keys.toList();

  String getString(String text) =>
      _localizedValues[locale.languageCode]![text] ?? text;
}

class ApplicationLocalizationDelegate
    extends LocalizationsDelegate<ApplicationLocalization> {
  const ApplicationLocalizationDelegate();

  @override
  bool isSupported(Locale locale) =>
    ApplicationLocalization.languages().contains(locale.languageCode);

  @override
  Future<ApplicationLocalization> load(Locale locale) {
    return SynchronousFuture<ApplicationLocalization>(
        ApplicationLocalization(locale));
  }

  @override
  bool shouldReload(ApplicationLocalizationDelegate old) => false;
}
