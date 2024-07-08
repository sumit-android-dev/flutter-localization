import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/screen/bloc/language_bloc.dart';
import 'package:flutter_localization/screen/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

/// Don't add const before screen name because it's blocked change language functionality.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageBloc(),
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          Locale locale = state.locale;
          if(state is LanguageChangedState){
            locale = state.locale;
          }
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
            locale: locale,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
