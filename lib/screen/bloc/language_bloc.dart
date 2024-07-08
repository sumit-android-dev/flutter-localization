import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageChangedState> {
  LanguageBloc() : super(const LanguageChangedState(Locale('en'))) {
    on<ChangeLanguage>(_onChangeLanguage);
    _loadLanguage();
  }

  void _onChangeLanguage(ChangeLanguage event, Emitter<LanguageChangedState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', event.locale.languageCode);
    emit(LanguageChangedState(event.locale));
  }

  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final localeCode = prefs.getString('locale') ?? 'en';
    add(ChangeLanguage(Locale(localeCode)));
  }
}