import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

class SequencePage extends StatelessWidget {
  SequencePage({Key? key}) : super(key: key);

  final List<String> purge = [
    'Purge',
    'Purge Pos Move',
    'Safe Pos Move',
    'Short Purge',
    'Normal Purge',
    'Infinity Purge'
  ];
  final List<String> align = [
    'Panel Align',
    'Top Pos Move',
    'Top Inspect',
    'Bot Pos Move',
    'Bot Inspect',
    'Offset Move'
  ];
  final List<String> print = [
    'Print',
    'Print Pos Move',
    '1st Print',
    '2nd Print',
  ];
  final List<String> dpc = [
    'DPC',
    'DPC Pos Move',
    'DPC Print',
    'Insp Pos Move',
    'Inspect'
  ];

  Widget resuedBox({
    required List<String> list,
  }) {
    return BorderBox(
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: double.infinity,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              children: List.generate(list.length, (idx) {
            return idx == 0
                ? Text(list[0])
                : ReusedContainer(
                    list[idx],
                    width: 250,
                    height: 50,
                    fontSize: 20,
                  );
          })),
          OutlineBtn(
            onTap: () {},
            text: 'Stop',
            bgColor: Colors.red,
            height: 50,
            width: 250,
            fontSize: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        resuedBox(list: purge),
        resuedBox(list: align),
        resuedBox(list: print),
        resuedBox(list: dpc),
      ],
    );
  }
}
