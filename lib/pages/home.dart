import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/controller/layout_ctrl.dart';
import 'package:w_jet/pages/Log/log_page.dart';
import 'package:w_jet/pages/config/config_page.dart';
import 'package:w_jet/pages/footer.dart';
import 'package:w_jet/pages/header.dart';
import 'package:w_jet/pages/manual/main_manual.dart';
import 'package:w_jet/pages/recipe/recipe_page.dart';

import 'main/main_info.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  Widget selectContents(int idx) {
    switch (idx) {
      case 0:
        return MainPage();
      case 1:
        return ManualPage();
      case 2:
        return RecipePage();
      case 3:
        return ConfigPage();
      case 4:
        return LogPage();
      default:
        return MainPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Header(),
            flex: 1,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Obx(() => selectContents(LayoutCtrl.to.tapIdx.value))),
            flex: 7,
          ),
          const Expanded(
            child: Footer(),
            flex: 1,
          )
        ],
      ),
    );
  }
}
