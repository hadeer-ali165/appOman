import 'package:flutter/material.dart';

Color _primaryColor = const Color(0xFF2F8CCA);
Color _secondaryColor = const Color(0xFFD84972);

ThemeData dark = ThemeData(
  fontFamily: 'IBM',
  primaryColor: _primaryColor,
  brightness: Brightness.dark,
  highlightColor: const Color(0xFF252525),
  hintColor: const Color(0xFFc7c7c7),
  cardColor: const Color(0xFF242424),
  scaffoldBackgroundColor: const Color(0xFF000000),
  splashColor: Colors.transparent,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    displayMedium: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    displaySmall: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    headlineLarge: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    headlineMedium: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    headlineSmall: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    titleLarge: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    titleMedium: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    titleSmall: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    bodyLarge: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    bodyMedium: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    bodySmall: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    labelLarge: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    labelMedium: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
    labelSmall: TextStyle(fontFamily: 'IBM', color: Color(0xFFE9EEF4)),
  ),
  colorScheme: ColorScheme.dark(
    primary: _primaryColor, // Primary Color
    secondary: _secondaryColor, // Secondary Color
    tertiary: const Color(0xFFFFBB38), // Warning Color
    tertiaryContainer: const Color(0xFF6C7A8E),
    surface: const Color(0xFF2D2D2D),
    onPrimary: const Color(0xFFB7D7FE),
    onTertiaryContainer: const Color(0xFF04BB7B), // Success Color
    primaryContainer: const Color(0xFF208458),
    onSecondaryContainer: const Color(0x912A2A2A),
    outline: const Color(0xff5C8FFC), // Info Color
    onTertiary: const Color(0xFF545252),
    secondaryContainer: const Color(0xFFE9EEF4),
    surfaceContainer: const Color(0xFFFB6C4C),
    error: const Color(0xFFFF4040), // Danger Color
    shadow: const Color(0xFFF4F7FC),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(fontFamily: 'IBM', fontSize: 20, fontWeight: FontWeight.w600),
    toolbarTextStyle: TextStyle(fontFamily: 'IBM'),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(fontFamily: 'IBM'),
    hintStyle: TextStyle(fontFamily: 'IBM'),
    errorStyle: TextStyle(fontFamily: 'IBM'),
  ),
  dialogTheme: const DialogThemeData(
    titleTextStyle: TextStyle(fontFamily: 'IBM'),
    contentTextStyle: TextStyle(fontFamily: 'IBM'),
  ),
  bottomSheetTheme: const BottomSheetThemeData(),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
    },
  ),
);
