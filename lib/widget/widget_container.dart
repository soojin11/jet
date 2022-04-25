import 'package:flutter/material.dart';

class ReusedContainer extends Container {
  ReusedContainer(String text,
      {Key? key,
      this.height = 100,
      this.width = 150,
      this.txtColor = Colors.white,
      this.fontSize = 30,
      this.boxColor = Colors.blue,
      this.padding,
      this.radius})
      : super(
            key: key,
            height: height,
            width: width,
            alignment: Alignment.center,
            padding: padding,
            child: Text(
              text,
              style: TextStyle(color: txtColor, fontSize: fontSize),
            ),
            decoration: BoxDecoration(
              color: boxColor,
              // borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blueGrey),
              borderRadius: radius,
            ));
  final double? height;
  final double? width;
  final Color txtColor;
  final double fontSize;
  final Color boxColor;
  final BorderRadiusGeometry? radius;
  final EdgeInsetsGeometry? padding;
}

class RoundBorderBox extends StatelessWidget {
  const RoundBorderBox({
    Key? key,
    this.title = '',
    required this.child,
  }) : super(key: key);
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: [
          Expanded(flex: 1, child: Text(title)),
          Expanded(flex: 5, child: child),
        ],
      ),
    );
  }
}

class BorderBox extends Container {
  BorderBox(
      // this.txt,
      {Key? key,
      this.width = 150,
      this.height = 40,
      this.child,
      this.padding,
      this.bgColor = Colors.transparent})
      : super(
            key: key,
            alignment: Alignment.center,
            child: child,
            padding: padding,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black), color: bgColor),
            width: width,
            height: height);
  final Widget? child;
  final double? width;
  final double? height;
  final Color? bgColor;
  final EdgeInsetsGeometry? padding;
}
