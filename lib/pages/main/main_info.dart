import 'package:flutter/material.dart';
import 'package:w_jet/config/wjet_color/status_color.dart';
import 'package:w_jet/pages/main/main_bottom.dart';
import 'package:w_jet/pages/main/right_side.dart';
import 'package:w_jet/widget/head_reservoir.dart';

import 'log.dart';

enum HcCommand { execute, restart, shutdown }

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 30),
                          child: Row(
                            children: [
                              Expanded(
                                  child: HRWidget(
                                showText: true,
                              )),
                              Expanded(child: HRWidget()),
                              Expanded(child: HRWidget()),
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Wjet.main),
                              borderRadius: BorderRadius.circular(50))),
                      flex: 6,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Wjet.main),
                              borderRadius: BorderRadius.circular(50)),
                          child: LogScreen()),
                      flex: 2,
                    ),
                    //
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Expanded(flex: 1, child: MainBtm()),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Align(alignment: Alignment.centerRight, child: RightSide()))
      ],
    );
  }
}
