import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screen/bloc/language_bloc.dart';

class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});
  @override
  LanguageSwitcherState createState() => LanguageSwitcherState();
}

class LanguageSwitcherState extends State<LanguageSwitcher> {
  bool isEnglish = true;

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
        width: 80,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.blue[900],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 32,
              decoration: BoxDecoration(
                color: isEnglish ? Colors.orange : Colors.transparent,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Center(
                child: Text(
                  'EN',
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
                borderRadius: BorderRadius.circular(2),
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
}
