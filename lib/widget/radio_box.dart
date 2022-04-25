import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/widget/widget_button.dart';

class OnAndOff extends StatelessWidget {
  OnAndOff(
      {Key? key, this.isConnect = false, this.width = 70, this.height = 40})
      : super(key: key);
  final RxBool isOn = RxBool(true);
  final bool isConnect;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(() => OutlineBtn(
              onTap: () {
                isOn.value = true;
              },
              width: width,
              height: height,
              bgColor: isOn.value ? Colors.green : Colors.white,
              txtColor: Colors.black,
              text: isConnect ? 'Connection' : 'On',
            )),
        const SizedBox(width: 10),
        Obx(() => OutlineBtn(
              onTap: () {
                isOn.value = false;
              },
              width: width,
              height: height,
              bgColor: isOn.value ? Colors.white : Colors.red,
              txtColor: Colors.black,
              text: isConnect ? 'Disconnection' : 'Off',
              borderColor: Colors.black,
            )),
      ],
    );
  }
}
