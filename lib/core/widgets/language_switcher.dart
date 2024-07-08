import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../screen/bloc/language_bloc.dart';

/*class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});

  @override
  LanguageSwitcherState createState() => LanguageSwitcherState();
}

class LanguageSwitcherState extends State<LanguageSwitcher> {
  bool isEnglish = true;

  @override
  void initState() {
    super.initState();
    initializeLanguageFromPreferences();
  }

  // Method to initialize language selection from shared preferences
  Future<void> initializeLanguageFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final localeCode = prefs.getString('locale') ?? 'en';
    setState(() {
      isEnglish = (localeCode == 'en');
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEnglish = !isEnglish;
          final newLocale = isEnglish ? const Locale('en') : const Locale('hi');
          context.read<LanguageBloc>().add(ChangeLanguage(newLocale));
        });
      },
      child: Container(
        width: 82,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.blue[900],
          border: Border.all(
            color: Colors.orange,
            width: 1, // Adjust the width as needed
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 32,
              decoration: BoxDecoration(
                color: isEnglish ? Colors.orange : Colors.transparent,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Center(
                child: Text(
                  'E',
                  style: TextStyle(
                    color: isEnglish ? Colors.white : Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: 40,
              height: 32,
              decoration: BoxDecoration(
                color: !isEnglish ? Colors.orange : Colors.transparent,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Center(
                child: Text(
                  'अ',
                  style: TextStyle(
                    color: !isEnglish ? Colors.white : Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/


class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        bool isEnglish = true;
        isEnglish = state.locale.languageCode == 'en';
        return GestureDetector(
          onTap: () {
            final newLocale = isEnglish ? const Locale('hi') : const Locale('en');
            context.read<LanguageBloc>().add(ChangeLanguage(newLocale));
          },
          child: Container(
            width: 50,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.blue[900],
              border: Border.all(
                color: Colors.orange,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: !isEnglish ? Colors.orange : Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 2),
                    child: Text(
                      'अ',
                      style: TextStyle(
                        color: !isEnglish ? Colors.white : Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isEnglish ? Colors.orange : Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(
                    child: Text(
                      'E',
                      style: TextStyle(
                        color: isEnglish ? Colors.white : Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
