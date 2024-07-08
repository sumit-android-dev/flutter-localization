import 'package:flutter/material.dart';
import 'package:flutter_localization/screen/detail_screen.dart';

import '../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  final Function() onLanguageChange;
  const HomeScreen({super.key,required this.onLanguageChange});

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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen(onLanguageChange : widget.onLanguageChange)));
                },
                child: Text(S.current.detail),
              ),
              ElevatedButton(
                onPressed: () {
                  widget.onLanguageChange();
                  setState(() {
                    
                  });
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
