import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/theme/darkthem.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.darkTheme);
  bool isdarth = false;

  void changeTheme() {
    isdarth = !isdarth;
    if (isdarth) {
      emit(AppTheme.darkTheme);
    } else {
      emit(AppTheme.lightTheme);
    }
  }
}
