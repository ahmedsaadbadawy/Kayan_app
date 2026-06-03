import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(const ChangeLocaleState(Locale('en')));

  void toggleLocale() {
    if (state.locale.languageCode == 'en') {
      emit(const ChangeLocaleState(Locale('ar')));
    } else {
      emit(const ChangeLocaleState(Locale('en')));
    }
  }
}