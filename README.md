# Flutter Localization Sample

This Flutter app demonstrates how to implement localization (internationalization) to support multiple languages.

## Features

- **Multi-language Support**: The app supports English and Spanish
- **Automatic Language Detection**: The app automatically uses the system's language setting
- **Manual Language Switching**: Users can manually switch languages using the profile icon in the app bar
- **Localized Strings**: All user-facing text is localized

## Supported Languages

- **English (en)**: Default language
- **Spanish (es)**: Spanish translations

## Localized Strings

The following strings are localized:

- App title: "Localization Demo" / "Demostración de Localización"
- Home page title: "Flutter Demo Home Page" / "Página de Inicio de Flutter Demo"
- Counter message: "You have pushed the button this many times:" / "Has presionado el botón esta cantidad de veces:"
- Increment tooltip: "Increment" / "Incrementar"

## How to Switch Languages

### Manual Language Switching
1. **Tap the profile icon** (👤) in the top-right corner of the app bar
2. **Select your preferred language** from the dropdown menu:
   - 🇺🇸 English
   - 🇪🇸 Español
3. The app will immediately switch to the selected language

### System Language Detection
The app also automatically detects and uses your system's language setting:

#### On iOS Simulator:
1. Go to Settings > General > Language & Region
2. Add Spanish to the list
3. Drag Spanish to the top to make it the primary language
4. Restart the app

#### On Android Emulator:
1. Go to Settings > System > Languages & input > Languages
2. Add Spanish
3. Drag Spanish to the top
4. Restart the app

#### On Web:
1. Change your browser's language settings
2. Refresh the page

## Project Structure

```
lib/
├── main.dart                    # Main app with localization setup
└── l10n/
    ├── app_localizations.dart   # Localization implementation
    ├── app_en.arb              # English translations
    └── app_es.arb              # Spanish translations
```

## Adding New Languages

To add a new language:

1. Create a new ARB file: `lib/l10n/app_[language_code].arb`
2. Add the language code to the `supportedLocales` list in `main.dart`
3. Add the translations to the new ARB file
4. Update the `AppLocalizations` class to handle the new language
5. Add a new `PopupMenuItem` in the language selection menu

## Adding New Strings

To add new localized strings:

1. Add the string to all ARB files (`app_en.arb`, `app_es.arb`, etc.)
2. Add a getter method to the `AppLocalizations` class
3. Use `AppLocalizations.of(context).newStringName` in your widgets

## Dependencies

The app uses the following localization-related dependencies:

- `flutter_localizations`: Provides localization support
- `intl`: Internationalization and localization support

## Running the App

```bash
flutter pub get
flutter run
```

The app will automatically detect the system language and display the appropriate translations. You can also manually switch languages using the profile icon in the app bar.
