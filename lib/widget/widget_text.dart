import 'package:flutter/material.dart';

import '../config/wjet_color/status_color.dart';

class Txt extends Text {
  Txt(
    String data, {
    this.txtColor = Wjet.white,
    this.fontSize = 15,
  }) : super(
          data,
          style: TextStyle(
            color: txtColor,
            fontSize: fontSize,
          ),
        );
  final Color? txtColor;
  final double? fontSize;
}
