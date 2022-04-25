import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/controller/log_ctrl.dart';
import '../../widget/widget_button.dart';

class LogScreen extends StatelessWidget {
  LogScreen({Key? key}) : super(key: key);
  RxInt idx = RxInt(0);

  btn({required VoidCallback? onTap, String text = ''}) {
    return Expanded(
      flex: 1,
      child: OutlineBtn(
        onTap: onTap,
        height: 40,
        text: text,
        radius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Log'),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                children: [
                  btn(
                      onTap: () {
                        idx.value = 0;
                      },
                      text: 'All'),
                  btn(
                      onTap: () {
                        idx.value = 1;
                      },
                      text: 'System'),
                  btn(
                      onTap: () {
                        idx.value = 2;
                      },
                      text: 'Result'),
                  btn(
                      onTap: () {
                        idx.value = 3;
                      },
                      text: 'Alarm'),
                ],
              ),
              // Obx(() => selectLog())
              Obx(() => LogCtrl.to.selectLog(idx.value))
            ],
          ),
        ),
      ],
    );
  }
}
