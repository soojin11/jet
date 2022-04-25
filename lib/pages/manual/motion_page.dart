import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

class MotionPage extends StatelessWidget {
  const MotionPage({Key? key}) : super(key: key);

  Widget borderBox(final String txt, {final double width = 180}) {
    return ReusedContainer(
      txt,
      width: width,
      height: 50,
      fontSize: 20,
    );
  }

  OutlineBtn _outlineBtn({
    final String text = '',
    Function()? onTap,
  }) {
    return OutlineBtn(
      onTap: onTap,
      width: 150,
      height: 50,
      text: text,
      fontSize: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 300,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              borderBox('Axis'),
              borderBox('X'),
              borderBox('Y'),
              borderBox('Z'),
              borderBox('T'),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              borderBox('Speed(mm/s)'),
              BorderBox(
                child: TextField(
                  controller: TextEditingController(),
                ),
                height: 50,
                width: 180,
              ),
              BorderBox(
                child: TextField(
                  controller: TextEditingController(),
                ),
                height: 50,
                width: 180,
              ),
              BorderBox(
                child: TextField(
                  controller: TextEditingController(),
                ),
                height: 50,
                width: 180,
              ),
              BorderBox(
                child: TextField(
                  controller: TextEditingController(),
                ),
                height: 50,
                width: 180,
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              borderBox('Value'),
              BorderBox(
                child: TextField(
                  controller: TextEditingController(),
                ),
                height: 50,
                width: 180,
              ),
              BorderBox(
                child: TextField(
                  controller: TextEditingController(),
                ),
                height: 50,
                width: 180,
              ),
              BorderBox(
                child: TextField(
                  controller: TextEditingController(),
                ),
                height: 50,
                width: 180,
              ),
              BorderBox(
                child: TextField(
                  controller: TextEditingController(),
                ),
                height: 50,
                width: 180,
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              borderBox('Move', width: 470),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _outlineBtn(onTap: () {}, text: 'Left'),
                  const SizedBox(width: 10),
                  _outlineBtn(onTap: () {}, text: 'Right'),
                  const SizedBox(width: 10),
                  _outlineBtn(onTap: () {}, text: 'Absolute'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _outlineBtn(onTap: () {}, text: 'Forward'),
                  const SizedBox(width: 10),
                  _outlineBtn(onTap: () {}, text: 'Backward'),
                  const SizedBox(width: 10),
                  _outlineBtn(onTap: () {}, text: 'Absolute'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _outlineBtn(onTap: () {}, text: 'Up'),
                  const SizedBox(width: 10),
                  _outlineBtn(onTap: () {}, text: 'Down'),
                  const SizedBox(width: 10),
                  _outlineBtn(onTap: () {}, text: 'Absolute'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _outlineBtn(onTap: () {}, text: 'CCW'),
                  const SizedBox(width: 10),
                  _outlineBtn(onTap: () {}, text: 'CW'),
                  const SizedBox(width: 10),
                  _outlineBtn(onTap: () {}, text: 'Absolute'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
