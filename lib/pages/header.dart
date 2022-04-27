import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:w_jet/controller/recipe_ctrl.dart';
import 'package:w_jet/function/alert.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../config/wjet_color/status_color.dart';

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);
  RxInt selectedIdx = RxInt(0);
  RxString selectedName = RxString('Recipe Name');

  Widget currentTime(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return ReusedContainer(
          DateFormat('yyyy/MM/dd \n HH:mm:ss').format(
            DateTime.now(),
          ),
          height: 100,
          width: 150,
          fontSize: 30,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ReusedContainer(
            'WGS',
            height: 100,
            width: 150,
            fontSize: 30,
          ),
          flex: 1,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: currentTime(context),
          flex: 1,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Obx(() => OutlineBtn(
                onTap: () async {
                  await RecipeCtrl.to.getRecipes();
                  Alert.show(
                      context: context,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 10),
                        controller: ScrollController(),
                        itemCount: RecipeCtrl.to.recipes.length,
                        itemBuilder: (context, index) {
                          return Obx(() => OutlineBtn(
                                onTap: () {
                                  selectedIdx.value = index;
                                },
                                text: RecipeCtrl.to.recipes[index],
                                height: 40,
                                bgColor: selectedIdx.value == index
                                    ? Wjet.selected
                                    : Wjet.main,
                                txtColor: Wjet.black,
                              ));
                        },
                      ),
                      apply: () {
                        selectedName.value =
                            RecipeCtrl.to.recipes[selectedIdx.value];
                        Navigator.pop(context);
                      },
                      title: 'Recipe');
                },
                text: selectedName.value,
                height: 100,
                fontSize: 30,
              )),
          flex: 2,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ReusedContainer(
            'PLC Interface Status', height: 100,
            width: 150, fontSize: 30,
            // width: 300,
          ),
          flex: 2,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ReusedContainer(
            'EQ Status',
            height: 100,
            width: 150,
            fontSize: 30,
          ),
          flex: 1,
        ),
      ],
    );
  }
}
