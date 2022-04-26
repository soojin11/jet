import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_container.dart';

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ReusedContainer(
          'Initail',
          height: 50,
          fontSize: 20,
        ),
        ReusedContainer(
          'Panel Align',
          height: 50,
          fontSize: 20,
        ),
        ReusedContainer(
          'Print',
          height: 50,
          fontSize: 20,
        ),
        ReusedContainer(
          'DPC',
          height: 50,
          fontSize: 20,
        ),
        ReusedContainer(
          'Periodic Jetting',
          height: 50,
          fontSize: 20,
        ),
        ReusedContainer(
          'Short Purge',
          height: 50,
          fontSize: 20,
        ),
        const SizedBox(height: 70),
        ReusedContainer(
          '드롭박스 넣기',
          height: 50,
          fontSize: 20,
        ),
        ReusedContainer(
          'Short Purge',
          height: 50,
          fontSize: 20,
        ),
      ],
    );
  }
}
