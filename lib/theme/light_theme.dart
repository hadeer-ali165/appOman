import 'package:flutter/material.dart';

Color _primaryColor = const Color(0xFF2F8CCA);
Color _secondaryColor = const Color(0xFFD84972);

ThemeData light({Color? primaryColor, Color? secondaryColor}) => ThemeData(
      fontFamily: 'IBM',
      primaryColor: primaryColor ?? const Color(0xFF1455AC),
      brightness: Brightness.light,
      highlightColor: Colors.white,
      hintColor: const Color(0xFFA7A7A7), //Border Color
      splashColor: Colors.transparent,
      cardColor: Colors.white,

      scaffoldBackgroundColor: const Color(0xFFF7F8FA),

      textTheme: TextTheme(
        displayLarge: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        displayMedium: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        displaySmall: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        headlineLarge: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        headlineMedium: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        headlineSmall: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        titleLarge: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        titleMedium: const TextStyle(fontFamily: 'IBM', color: Color(0xFF656566)),
        titleSmall: const TextStyle(fontFamily: 'IBM', color: Color(0xFF656566)),
        bodyLarge: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        bodyMedium: TextStyle(fontFamily: 'IBM', color: _primaryColor),
        bodySmall: const TextStyle(fontFamily: 'IBM', color: Color(0xFFA7A7A7)),
        labelLarge: const TextStyle(fontFamily: 'IBM', color: Color(0xFF222324)),
        labelMedium: const TextStyle(fontFamily: 'IBM', color: Color(0xFF656566)),
        labelSmall: const TextStyle(fontFamily: 'IBM', color: Color(0xFFA7A7A7)),
      ),

      colorScheme: ColorScheme.light(
        primary: _primaryColor, // Primary Color
        secondary: _secondaryColor, // Secondary Color
        tertiary: const Color(0xFFFFBB38), // Warning Color
        tertiaryContainer: const Color(0xFFADC9F3),
        onTertiaryContainer: const Color(0xFF04BB7B), // Success Color
        onPrimary: const Color(0xFF7FBBFF),
        surface: const Color(0xFFF4F8FF),
        onSecondary: secondaryColor ?? const Color(0xFFF88030),
        error: const Color(0xFFFF4040), // Danger Color
        onSecondaryContainer: const Color(0xFFF3F9FF),
        outline: const Color(0xff5C8FFC), // Info Color
        onTertiary: const Color(0xFFE9F3FF),
        shadow: const Color(0xFF66717C),

        primaryContainer: const Color(0xFF9AECC6),
        secondaryContainer: const Color(0xFFE9EEF4),
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
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
        },
      ),
    );
