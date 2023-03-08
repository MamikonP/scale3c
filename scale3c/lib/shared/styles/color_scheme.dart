import 'package:flutter/material.dart';

import 'colors.dart';

class CustomThemeData {
  ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor:
            CustomColorScheme().colorSchemeLight.background,
        colorScheme: CustomColorScheme().colorSchemeLight,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
              color: CustomColorScheme().colorSchemeLight.onBackground),
        ),
      );
}

class CustomColorScheme with LightColor {
  ColorScheme get colorSchemeLight => ColorScheme(
        primary: primary,
        background: background,
        brightness: Brightness.light,
        error: Colors.red,
        onBackground: onBackground,
        onError: onPrimary,
        onPrimary: onPrimary,
        onSecondary: onBackground,
        onSurface: onPrimary,
        secondary: secondary,
        surface: Colors.yellow,
        primaryContainer: primaryText,
        secondaryContainer: secondaryText,
        outline: outline,
      );
}
