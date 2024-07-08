part of 'language_bloc.dart';

class LanguageState extends Equatable {
  final Locale locale;
  const LanguageState(this.locale);
  @override
  List<Object> get props => [locale];
}

class LanguageChangedState extends LanguageState {
  const LanguageChangedState(super.locale);
  @override
  List<Object> get props => [locale];
}

