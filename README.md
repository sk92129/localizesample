# Flutter Localization Sample

This Flutter app demonstrates how to implement localization (internationalization) to support multiple languages.

<img width="447" height="925" alt="image" src="https://github.com/user-attachments/assets/d72b58e2-45d3-42bc-9147-2c7be327cc83" />

<img width="426" height="932" alt="image" src="https://github.com/user-attachments/assets/4e5bfcaf-6ffd-4a1c-b853-c3b5f2fc4ee5" />

Referenced by this youtube video https://www.youtube.com/watch?v=sWsjbwu_f8k

## Features

- **Multi-language Support**: The app supports English and Spanish
- **Automatic Language Detection**: The app automatically uses the system's language setting
- **Manual Language Switching**: Users can manually switch languages using the profile icon in the app bar
- **iOS System Language Detection**: Automatically detects and switches to the system language when the app comes back to the foreground on iOS
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

### iOS System Language Detection
The app automatically detects system language changes on iOS:

1. **Change your iOS system language** in Settings > General > Language & Region
2. **Switch to another app** or go to the home screen
3. **Return to this app** - it will automatically detect and switch to the new system language
4. **No restart required** - the language change happens immediately when the app comes to foreground

### System Language Detection (Other Platforms)
The app also automatically detects and uses your system's language setting:

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
6. Update the `_getSystemLocale()` method to support the new language

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

The app will automatically detect the system language and display the appropriate translations. You can also manually switch languages using the profile icon in the app bar. On iOS, the app will automatically detect system language changes when it comes back to the foreground.
