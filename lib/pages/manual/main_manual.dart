import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/controller/layout_ctrl.dart';
import 'package:w_jet/pages/manual/hardware_page.dart';
import 'package:w_jet/pages/manual/motion_page.dart';
import 'package:w_jet/pages/manual/sequence_page.dart';
import 'package:w_jet/pages/manual/teaching_page.dart';
import 'package:w_jet/widget/widget_button.dart';

import 'design_page.dart';
import 'head_reservoir_page.dart';

class ManualPage extends StatelessWidget {
  ManualPage({Key? key}) : super(key: key);

  Widget selectedWidget(int idx) {
    switch (idx) {
      case 0:
        return MotionPage();
      case 1:
        return TeachingPage();
      case 2:
        return ManualHRpage();
      case 3:
        return HardWarePage();
      case 4:
        return DesignPage();
      case 5:
        return SequencePage();
      default:
        return MotionPage();
    }
  }

  List<String> tapName = [
    'Motion',
    'Teaching',
    'Head & Reservoir',
    'H / W',
    'Design',
    'Sequence',
    'Periodic Jetting'
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Obx(() => selectedWidget(LayoutCtrl.to.manualIdx.value))),
        const VerticalDivider(
          color: Colors.black,
        ),
        Expanded(
          flex: 1,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  tapName.length,
                  (idx) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Obx(
                        () => OutlineBtn(
                          onTap: () {
                            if (idx != 6) {
                              LayoutCtrl.to.manualIdx(idx);
                            }
                          },
                          text: tapName[idx],
                          height: 50,
                          fontSize: 20,
                          bgColor: LayoutCtrl.to.manualIdx.value == idx
                              ? Colors.green
                              : Colors.blue,
                        ),
                      )))),
        ),
      ],
    );
  }
}
