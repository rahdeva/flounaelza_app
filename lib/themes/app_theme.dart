import 'package:flutter/material.dart';
import '/resources/resources.dart';

class AppTheme {
  static ThemeData buildThemeData(bool darkMode, BuildContext context) {
    return ThemeData(
      primaryColor: AppColors.colorPrimary,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.white,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      appBarTheme: lightAppBar(),
      fontFamily: 'Lora',
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.colorPrimary,
        )
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) => AppColors.colorPrimary
        ),
      ),
      bottomNavigationBarTheme: lightNavigation(),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        displayMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        displaySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        headlineSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        titleLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
        titleMedium: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
        titleSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      ),
      inputDecorationTheme: inputDecoration(darkMode, context), 
      colorScheme: ThemeData().colorScheme.copyWith(
        primary: AppColors.colorPrimary,
      ).copyWith(
        background: (darkMode) ? AppColors.black : AppColors.white
      ),
    );
  }

  static AppBarTheme lightAppBar() {
    return const AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.black, //change your color here
      ),
      color: AppColors.white,
      // titleTextStyle: TextStyle(
      //   fontSize: 16,
      //   fontWeight: FontWeight.w500,
      //   color: AppColors.black,
      // ),
      elevation: 0,
    );
  }

  static BottomNavigationBarThemeData lightNavigation() {
    return const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.deepOrangeAccent,
      elevation: 0,
    );
  }

  static AppBarTheme darkAppBar() {
    return const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.amber, //change your color here
      ),
      color: Colors.red,
      elevation: 0,
    );
  }

  static BottomNavigationBarThemeData darkNavigation() {
    return const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.deepOrangeAccent,
      elevation: 0,
    );
  }

  // Box Field
  static inputDecoration(bool darkMode, context) {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[50],
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      suffixIconColor: AppColors.colorSecondary,
      prefixIconColor: AppColors.colorSecondary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.colorSecondary, 
          width: 1
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.colorSecondary, 
          width: 1
        )
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.colorSecondary, 
          width: 1
        )
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: AppColors.danger.withOpacity(0.8), 
          width: 1
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.colorSecondary, 
          width: 2
        )
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.danger, 
          width: 1.5
        ),
      ),
      labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
        color: AppColors.colorSecondary,
        fontWeight: FontWeight.w600
      ),
      hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: AppColors.gray500
      ),
      errorStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: AppColors.danger
      ),
    );
  }
}

class AppElevation {
  static BoxShadow elevation2px = BoxShadow(
    color: AppColors.black.withOpacity(0.05),
    spreadRadius: 0,
    blurRadius: 7,
    offset: const Offset(0, 3),
  );
  static BoxShadow elevation4px = BoxShadow(
    color: AppColors.black.withOpacity(0.10),
    spreadRadius: 0,
    blurRadius: 10,
    offset: const Offset(0, 2),
  );
  static BoxShadow elevation4pxBottom = BoxShadow(
    color: AppColors.black.withOpacity(0.04),
    spreadRadius: 0,
    blurRadius: 4,
    offset: const Offset(0, 4),
  );
  static BoxShadow elevation4pxUp = BoxShadow(
    color: AppColors.black.withOpacity(0.04),
    spreadRadius: 0,
    blurRadius: 4,
    offset: const Offset(0, -4),
  );
  static BoxShadow elevation7px = BoxShadow(
    color: AppColors.black.withOpacity(0.20),
    spreadRadius: 0,
    blurRadius: 7,
    offset: const Offset(0, 2),
  );
  static BoxShadow elevation7pxBottom = BoxShadow(
    color: AppColors.black.withOpacity(0.15),
    spreadRadius: 0,
    blurRadius: 7,
    offset: const Offset(0, 4),
  );
  static BoxShadow elevation9px = BoxShadow(
    color: AppColors.black.withOpacity(0.20),
    spreadRadius: 0,
    blurRadius: 11,
    offset: const Offset(0, 2),
  );
}