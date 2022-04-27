import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_container.dart';

class RightSide extends StatelessWidget {
  RightSide({Key? key}) : super(key: key);

  List items = [
    'Teaching Pos List0',
    'Teaching Pos List1',
    'Teaching Pos List2'
  ];

  @override
  Widget build(BuildContext context) {
    String selected = items[0];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ReusedContainer(
          'Initail',
          height: 50,
          fontSize: 20,
          width: 150,
        ),
        ReusedContainer(
          'Panel Align',
          height: 50,
          fontSize: 20,
          width: 150,
        ),
        ReusedContainer(
          'Print',
          height: 50,
          fontSize: 20,
          width: 150,
        ),
        ReusedContainer(
          'DPC',
          height: 50,
          fontSize: 20,
          width: 150,
        ),
        ReusedContainer(
          'Periodic Jetting',
          height: 50,
          fontSize: 20,
          width: 150,
        ),
        ReusedContainer(
          'Short Purge',
          height: 50,
          fontSize: 20,
          width: 150,
        ),
        const SizedBox(height: 70),
        DropdownButton(
          value: selected,
          items: items.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (v) {
            selected = v.toString();
          },
        ),
        ReusedContainer(
          'Short Purge',
          height: 50,
          fontSize: 20,
          width: 150,
        ),
      ],
    );
  }
}
