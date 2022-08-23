import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../cour/app_prefs.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final AppPreferences appPreferences;

  AppCubit({required this.appPreferences}) : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  init() {
    // Theme Mode
    appPreferences.getThemeMode();
    // Accent Color
    appPreferences.getAccentColor();
    emit(AppChangeModeState());
  }

  Color get colorAccent => accentColor;
/*
  Color get colorAccent => accentColor;

  set color(int colorIndex) {
    appPreferences.setAccentColor(colorIndex).then((value) => emit(AppChangeModeState()));
  }

  ThemeMode get mode => currentThemeMode;

  set mode(ThemeMode mode) {
    appPreferences.setThemeMode(mode).then((value) => emit(AppChangeModeState()));
  }
*/

  void changeApplicationAccent(int colorIndex) {
    appPreferences.setAccentColor(colorIndex).then((value) => emit(AppChangeModeState()));
  }

  void changeApplicationMode(ThemeMode mode) {
    appPreferences.setThemeMode(mode).then((value) => emit(AppChangeModeState()));
  }

  void changeApplicationLanguage() {
    appPreferences.setLanguageChanged().then((value) => emit(AppChangeGeneralState()));
  }
}
