import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class DetailScreen extends StatefulWidget {
  final Function() onLanguageChange;

  const DetailScreen({super.key, required this.onLanguageChange});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.current.appTitle,
          style: const TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text(S.current.detail),
              ),
              ElevatedButton(
                onPressed: () {
                  widget.onLanguageChange();
                  setState(() {});
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
