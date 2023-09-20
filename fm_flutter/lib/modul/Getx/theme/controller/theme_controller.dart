import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/theme/view/theme_view.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  ThemeView? view;
  @override
  void onInit() {
    theme = lightTheme;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  ThemeData darkTheme = ThemeData.dark();
  ThemeData lightTheme = ThemeData.light();
  late ThemeData theme;

  useDarkTheme() {
    theme = darkTheme;
    update();
  }

  useLightTheme() {
    theme = lightTheme;
    update();
  }

  changeThemeGetx() {
    Get.changeTheme(ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.green)));
   
  }
}
