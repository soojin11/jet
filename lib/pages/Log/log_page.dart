import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:w_jet/controller/log_ctrl.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../../config/wjet_color/status_color.dart';
import '../../widget/widget_button.dart';

class LogPage extends StatelessWidget {
  LogPage({Key? key}) : super(key: key);
  RxInt idx = RxInt(0);
  DateTime pickTime = DateTime.now();

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
              Obx(() => OutlineBtn(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: SizedBox(
                              width: 500,
                              height: 350,
                              child: CalendarDatePicker(
                                  initialDate: LogCtrl.to.pickDate.value,
                                  firstDate: DateTime.parse('2022-01-01'),
                                  lastDate: DateTime.now(),
                                  onDateChanged: (v) {
                                    pickTime = v;
                                  }),
                            ),
                            actions: [
                              OutlineBtn(
                                  width: 80,
                                  height: 40,
                                  bgColor: Wjet.white,
                                  txtColor: Wjet.black,
                                  text: 'Ok',
                                  onTap: () {
                                    LogCtrl.to.pickDate.value = pickTime;
                                    Navigator.pop(context);
                                  }),
                              const SizedBox(width: 10),
                              OutlineBtn(
                                  width: 80,
                                  height: 40,
                                  bgColor: Wjet.white,
                                  text: 'cancel',
                                  txtColor: Wjet.black,
                                  onTap: () {
                                    Navigator.pop(context);
                                  }),
                            ],
                          );
                        },
                      );
                    },
                    text: DateFormat('yyyy-MM-dd')
                        .format(LogCtrl.to.pickDate.value),
                    bgColor: Wjet.white,
                    txtColor: Wjet.black,
                    fontSize: 20,
                    borderColor: Wjet.transparent,
                  )),
              const SizedBox(width: 20),
              OutlineBtn(
                onTap: () {},
                text: '조회',
                height: 40,
                width: 100,
                fontSize: 20,
              ),
            ],
          ),
          BorderBox(
            width: double.infinity,
            height: 500,
            child: Obx(() => LogCtrl.to.selectLog(idx.value, context: context)),
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
