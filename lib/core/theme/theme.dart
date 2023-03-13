import 'package:flutter/material.dart';

FontWeight fontLight = FontWeight.w300;
FontWeight fontNormal = FontWeight.w400;
FontWeight fontMedium = FontWeight.w500;
FontWeight fontSemiBold = FontWeight.w600;
FontWeight fontBold = FontWeight.w700;
FontWeight fontExtraBold = FontWeight.w800;
FontWeight fontBlack = FontWeight.w900;

Color textPrimary = const Color(0xff1B1A57);
Color textSecondary = const Color(0xff4F5E7B);
Color greenColor = const Color(0xff4CE417);
Color greyColor = const Color(0xffBDBDBD);
Color yellowColor = const Color(0xffF2C94C);
Color backgroundGradient = const Color(0xfff4f4f4);

class AppTheme {
  static final ThemeData theme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Color(0xff2F80ED),
      onPrimary: Colors.white,
      surface: Colors.white,
      surfaceVariant: Color.fromARGB(255, 218, 218, 219),
      onSurfaceVariant: textPrimary,
      onSurface: textSecondary,
    ),
  );
}
