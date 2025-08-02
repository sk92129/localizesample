import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _currentLocale = const Locale('en');

  void _changeLanguage(Locale newLocale) {
    setState(() {
      _currentLocale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localization Demo',

      // Enable localization
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      locale: _currentLocale,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(
        onLanguageChanged: _changeLanguage,
        currentLocale: _currentLocale,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Function(Locale) onLanguageChanged;
  final Locale currentLocale;

  const MyHomePage({
    super.key,
    required this.onLanguageChanged,
    required this.currentLocale,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(AppLocalizations.of(context)!.homePageTitle),
        actions: [
          PopupMenuButton<Locale>(
            icon: const Icon(Icons.person),
            onSelected: widget.onLanguageChanged,
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<Locale>(
                value: const Locale('en'),
                child: Row(
                  children: [
                    const Text('🇺🇸 '),
                    const SizedBox(width: 8),
                    const Text('English'),
                    if (widget.currentLocale.languageCode == 'en')
                      const Icon(Icons.check, size: 16),
                  ],
                ),
              ),
              PopupMenuItem<Locale>(
                value: const Locale('es'),
                child: Row(
                  children: [
                    const Text('🇪🇸 '),
                    const SizedBox(width: 8),
                    const Text('Español'),
                    if (widget.currentLocale.languageCode == 'es')
                      const Icon(Icons.check, size: 16),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(AppLocalizations.of(context)!.counterMessage),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: AppLocalizations.of(context)!.incrementTooltip,
        child: const Icon(Icons.add),
      ),
    );
  }
}
