import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/screen/detail_screen.dart';

import '../core/widgets/language_switcher.dart';
import '../generated/l10n.dart';
import 'bloc/language_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.current.appTitle,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const LanguageSwitcher(),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailScreen()));
                },
                child: Text(S.current.detail),
              ),
              ElevatedButton(
                onPressed: () {
                  final currentLocale =
                      context.read<LanguageBloc>().state.locale;
                  final newLocale = currentLocale.languageCode == 'en'
                      ? Locale('hi')
                      : Locale('en');
                  context.read<LanguageBloc>().add(ChangeLanguage(newLocale));
                },
                child: Text(S.current.changeLanguage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
