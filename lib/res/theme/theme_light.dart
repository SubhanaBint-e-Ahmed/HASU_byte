import 'package:cocoon/res/constants/app_colors.dart';

import '../theme/app_theme.dart';

// import 'package:cocoon/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

import '../../utils/extensions/app_theme_extension.dart';

class ThemeLight extends AppTheme {
  ThemeData get theme => ThemeData(
        useMaterial3: true,

        primarySwatch: primarySwatch,
        extensions: [extension],
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        cardColor: cardColor,
        checkboxTheme: CheckboxThemeData(
          side: BorderSide(width: 2.5, color: primary),
        ),
        appBarTheme: const AppBarTheme(centerTitle: true),
        textTheme: const TextTheme(
          titleSmall: TextStyle(
              color: Color(0xff212121),
              fontSize: 22,
              fontWeight: FontWeight.w600),
          titleMedium: TextStyle(
              color: Color(0xff212121),
              fontSize: 29,
              fontWeight: FontWeight.w700),
          titleLarge: TextStyle(
              color: Color(0xff212121),
              fontSize: 40,
              fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(
              color: Color(0xff212121),
              fontSize: 14,
              fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(color: Color(0xff212121), fontSize: 11),
          bodySmall: TextStyle(
              color: Color(0xff212121),
              fontSize: 13,
              fontWeight: FontWeight.w400),
          bodyLarge: TextStyle(color: Color(0xff212121), fontSize: 14),
        ),

        // fontFamily: FontFamily.poppins,
        colorScheme: ColorScheme.light(
          primary: primary,
          onPrimary: onPrimary,
          secondary: secondary,
          onSecondary: onSecondary,
          error: errorColor,
        ),
        radioTheme: RadioThemeData(
          overlayColor: WidgetStateProperty.all(errorColor),

        ),
        inputDecorationTheme: inputDecorationTheme,
        progressIndicatorTheme: const ProgressIndicatorThemeData(),
      );

  @override
  MaterialColor get primarySwatch => createMaterialColor(primary);

  @override
 Color get primary => AppColors.purple;


  @override
  Color get onPrimary => const Color(0xFFFFFFFF);

  @override
  Color get secondary => const Color(0xFFD3E1FF);

  @override
  Color get onSecondary => const Color(0xFF344054);

  @override
  Color get scaffoldBackgroundColor => const Color(0xffFFFFFF);

  @override
  Color get errorColor => Colors.red;

  @override
  TextTheme get textTheme => const TextTheme();

  @override
  AppThemeExtension get extension => AppThemeExtension(
        extraLightGrey: Colors.grey.withOpacity(0.3),
        lightGrey: Colors.grey.withOpacity(0.7),
        vertical: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [primary, secondary],
        ),
        horizontal: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [primary, secondary],
        ),
        grey: grey,
      );

  @override
  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds.abs()).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds.abs()).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds.abs()).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }

  @override
  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        errorStyle: textTheme.bodySmall?.copyWith(color: errorColor),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: errorColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: errorColor),
        ),
      );

  @override
  Color get cardColor => const Color(0xffFAFAFA);

  @override
  Color get grey => const Color(0xff98A2B3);
}
