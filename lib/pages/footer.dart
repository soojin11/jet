import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../controller/layout_ctrl.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(0);
            },
            text: 'Main',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(1);
            },
            text: 'Manual',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(2);
            },
            text: 'Recipe',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(3);
            },
            text: 'Config',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(4);
            },
            text: 'Log',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
            child: OutlineBtn(
          onTap: () {},
          text: 'Stop',
          bgColor: Colors.red,
          fontSize: 30,
          height: 100,
        )),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {},
            text: 'Exit',
            height: 100,
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
