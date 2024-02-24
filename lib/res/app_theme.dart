import 'package:flutter/material.dart';
import 'package:profile_page/res/app_colors.dart';

AppTheme currentTheme = AppTheme();

class AppTheme with ChangeNotifier {
  static bool isDarkMode = false;
  ThemeMode get currentTheme => isDarkMode ? ThemeMode.dark : ThemeMode.light;
  void toggle() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.black,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: AppColors.black, fontSize: 24, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
          color: AppColors.black,
        ),
        bodyMedium: TextStyle(
          color: AppColors.black,
          fontSize: 14,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primaryColor,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: AppColors.tabColor,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      textTheme: TextTheme(
        displayLarge: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        bodyLarge: const TextStyle(
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          color: Colors.grey[400],
          fontSize: 14,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.tabColor,
      ),
    );
  }
}
