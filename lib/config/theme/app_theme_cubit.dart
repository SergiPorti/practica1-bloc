import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:practica_bloc/config/theme/app_theme_state.dart';

const seedColor = Color.fromARGB(255, 7, 80, 59);

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeState(isDarkMode: true));

  static ThemeData getTheme(bool isDarkMode) => ThemeData(
        colorSchemeSeed: seedColor,
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
      );

  updateTheme() => emit(AppThemeState(isDarkMode: !state.isDarkMode));
}
