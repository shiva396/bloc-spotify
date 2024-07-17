import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  //This takes up the thememode and emit to thememode function and changes the theme
  void updateTheme(ThemeMode thememode) => emit(thememode);
  
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
  
  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
