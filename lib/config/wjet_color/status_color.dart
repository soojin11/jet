import 'package:flutter/material.dart';

class ColorExpand extends Color {
  const ColorExpand(int value, this.shade) : super(value);
  final Map<int, Color> shade;
}

abstract class Wjet {
  static const Color transparent = Color(0x00000000);

  static const Color background = Color(0xFFF2F5F9);

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const ColorExpand grey = ColorExpand(
    0xFFB6B9BA,
    {
      100: Color(0xFFEDEDED),
      300: Color(0xFFCAC9C8),
      400: Color(0xFFB6B9BA),
      500: Color(0xFF8B8C8C),
      600: Color.fromRGBO(117, 117, 117, 1),
    },
  );

  static const ColorExpand main = ColorExpand(
    0xFF097865,
    {
      100: Color(0xFFEDF4F7),
      300: Color(0xFF4aa893),
      400: Color(0xFF097865),
      600: Color(0xFF004b3b),
    },
  );
  static const ColorExpand main4 = ColorExpand(
    0xFF0369B0,
    {
      100: Color.fromRGBO(227, 242, 253, 1),
      300: Color(0xFF5597E2),
      400: Color(0xFF0369B0),
      600: Color(0XFF003F80),
    },
  );

  static const Color error = Color(0xFFF70D08);
  static const Color primary = Color(0xFF048DD4);
  static const Color shadow = Color(0xFF999BAF);

  static const Color border = Color(0xFFB5B5B5);
  static const Color disabled = Color(0xFFBFBFBF);
}
