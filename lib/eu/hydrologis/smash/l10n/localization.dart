import 'package:flutter/widgets.dart';
import 'package:smash/generated/l10n.dart';

class Localization {
  static SL? _loc;

  SL get loc => Localization._loc!;

  static void init() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    final preferred = widgetsBinding.window.locales;
    const supported = SL.supportedLocales;
    final locale = basicLocaleListResolution(preferred, supported);
    _loc = await SL.delegate.load(locale);
  }
}
