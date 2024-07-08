import 'package:flutter/material.dart';
import 'package:flutter_localization/screen/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Locale _locale = const Locale('en'); // Default locale

  void _changeLanguage() {
    setState(() {
      if (_locale.languageCode == 'hi') {
        _locale = const Locale('en');
      } else {
        _locale = const Locale('hi');
      }
      saveLocale(_locale);
    });
  }

  @override
  initState() {
    // TODO: implement initState
    super.initState();
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    Locale savedLocale = await getLocale();
    setState(() {
      _locale = savedLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Localization',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale:_locale,
      home: HomeScreen(onLanguageChange: _changeLanguage),
    );
  }


  saveLocale(Locale locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', locale.languageCode);
  }

  Future<Locale> getLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString('language') ?? 'en';
    print(languageCode);
    return Locale(languageCode);
  }

}
