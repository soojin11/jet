import 'package:flutter/material.dart';
import 'package:w_jet/config/wjet_color/status_color.dart';

class OutlineBtn extends Material {
  OutlineBtn(
      {Key? key,
      required VoidCallback? onTap,
      this.text = '',
      this.height,
      this.width,
      this.fontSize,
      this.bgColor = Wjet.main,
      this.txtColor = Wjet.white,
      this.borderColor = Wjet.black,
      this.radius})
      : super(
          key: key,
          // height: 100,
          // alignment: Alignment.center,
          // onTap: onTap,
          child: InkWell(
            child: Container(
              height: height,
              width: width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: bgColor,
                  border: Border.all(color: borderColor),
                  borderRadius: radius),
              child: Text(
                text,
                style: TextStyle(color: txtColor, fontSize: fontSize),
              ),
            ),
            onTap: onTap,
          ),
        );
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final BorderRadiusGeometry? radius;
  final Color bgColor;
  final Color txtColor;
  final Color borderColor;
}
