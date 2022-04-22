import 'package:flutter/material.dart';

class Txt extends Text {
  Txt(
    String data, {
    this.txtColor = Colors.white,
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
