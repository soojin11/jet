import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/controller/log_ctrl.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../../widget/widget_button.dart';

class LogPage extends StatelessWidget {
  LogPage({Key? key}) : super(key: key);
  RxInt idx = RxInt(0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              ReusedContainer(
                '조회일',
                height: 40,
                width: 150,
                fontSize: 20,
              ),
              const SizedBox(width: 10),
              ReusedContainer(
                '조회',
                height: 40,
                width: 150,
                fontSize: 20,
              ),
            ],
          ),
          BorderBox(
            width: double.infinity,
            height: 500,
            child: Obx(() => LogCtrl.to.selectLog(idx.value)),
          ),
          Row(
            children: [
              OutlineBtn(
                onTap: () {
                  idx(0);
                },
                text: 'All',
                width: 120,
                height: 50,
                fontSize: 20,
              ),
              const SizedBox(width: 10),
              OutlineBtn(
                onTap: () {
                  idx(1);
                },
                text: 'System',
                width: 120,
                height: 50,
                fontSize: 20,
              ),
              const SizedBox(width: 10),
              OutlineBtn(
                onTap: () {
                  idx(2);
                },
                text: 'Result',
                width: 120,
                height: 50,
                fontSize: 20,
              ),
              const SizedBox(width: 10),
              OutlineBtn(
                onTap: () {
                  idx(3);
                },
                text: 'Alarm',
                width: 120,
                height: 50,
                fontSize: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
