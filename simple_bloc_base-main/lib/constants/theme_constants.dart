import 'package:flutter/material.dart';

import 'constants.dart';

class ThemeConst {
  ThemeConst._();

  static final inputBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: ColorConst.borderColor, width: 0.5),
    borderRadius: BorderRadius.circular(8.0),
  );

  static ThemeData get(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorConst.white,
        foregroundColor: ColorConst.primaryBlue,
      ),
      primarySwatch: ColorConst.primaryColorSwatch,
      primaryColor: ColorConst.primaryBlue,
      hintColor: ColorConst.textPlaceHolder,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        hintStyle: StyleConst.size14.copyWith(
          color: ColorConst.textPlaceHolder,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: ColorConst.primaryBlue, width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: ColorConst.borderColor, width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: ColorConst.borderColor, width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 8,
          ),
          onPrimary: ColorConst.white,
          primary: ColorConst.primaryBlue,
          onSurface: ColorConst.disableButton,
          splashFactory: InkRipple.splashFactory,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            side: BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(ColorConst.white),
        side: const BorderSide(
          color: ColorConst.primaryBlue,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        fillColor: MaterialStateProperty.all(ColorConst.primaryBlue),
      ),
    );
  }
}
