// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Demostración de Localización';

  @override
  String get homePageTitle => 'Página de Inicio de Flutter Demo';

  @override
  String get counterMessage => 'Has presionado el botón esta cantidad de veces:';

  @override
  String get incrementTooltip => 'Incrementar';
}
