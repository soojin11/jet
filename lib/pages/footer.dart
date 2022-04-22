import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ReusedContainer(
            'Main',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ReusedContainer(
            'Manual',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {},
            text: 'Recipe',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ReusedContainer(
            'Config',
            width: 300,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(child: ReusedContainer('Log')),
        const SizedBox(width: 10),
        Expanded(child: ReusedContainer('Stop')),
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
