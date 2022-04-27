import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/widget/widget_button.dart';

import '../config/wjet_color/status_color.dart';

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(() => OutlineBtn(
              borderColor: Wjet.black,
              onTap: () {
                isOn.value = true;
              },
              width: width,
              height: height,
              bgColor: isOn.value ? Wjet.error : Wjet.white,
              txtColor: isOn.value ? Wjet.white : Wjet.black,
              text: isConnect ? 'Connection' : 'On',
            )),
        const SizedBox(width: 10),
        Obx(() => OutlineBtn(
              onTap: () {
                isOn.value = false;
              },
              width: width,
              height: height,
              bgColor: isOn.value ? Wjet.white : Wjet.error,
              txtColor: isOn.value ? Wjet.black : Wjet.white,
              text: isConnect ? 'Disconnection' : 'Off',
              borderColor: Wjet.black,
            )),
      ],
    );
  }
}
