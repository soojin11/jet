import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';

class RadioBox extends StatelessWidget {
  RadioBox({Key? key, required this.model, required void Function()? onTap})
      : super(key: key);
  Map model = Map();
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          List.generate(model.length, (index) => OutlineBtn(onTap: onTap)),
    );
  }
}
