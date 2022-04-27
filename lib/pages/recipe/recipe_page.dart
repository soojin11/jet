import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../../config/wjet_color/status_color.dart';
import '../../controller/recipe_ctrl.dart';
import '../../widget/widget_button.dart';

class RecipePage extends StatelessWidget {
  RecipePage({Key? key}) : super(key: key);
  RxInt selectedIdx = RxInt(0);

  // List test = List.generate(10, (index) => 'Recipe Name : $index');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: RecipeCtrl.to.getRecipes(),
      builder: (context, snapshot) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 1500,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: BorderBox(
                        height: 600,
                        child: Obx(
                          () => ListView.separated(
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
                                        ? Wjet.main
                                        : Wjet.white,
                                    txtColor: Wjet.black,
                                  ));
                            },
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: BorderBox(
                        height: 600,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          controller: ScrollController(),
                          itemCount: RecipeCtrl.to.recipes.length,
                          itemBuilder: (context, index) {
                            return BorderBox();
                          },
                        ),
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineBtn(
                  onTap: () {
                    RecipeCtrl.to.addNewRecipe(selectedIdx.value);
                  },
                  text: 'New',
                  width: 120,
                  height: 50,
                  fontSize: 20,
                ),
                const SizedBox(width: 10),
                OutlineBtn(
                  onTap: () {},
                  text: 'Save',
                  width: 120,
                  height: 50,
                  fontSize: 20,
                ),
                const SizedBox(width: 10),
                OutlineBtn(
                  onTap: () {
                    RecipeCtrl.to.deleteRecipe(selectedIdx.value);
                  },
                  text: 'Delete',
                  width: 120,
                  height: 50,
                  fontSize: 20,
                ),
                const SizedBox(width: 10),
                OutlineBtn(
                  onTap: () {},
                  text: 'Refresh',
                  width: 120,
                  height: 50,
                  fontSize: 20,
                ),
                const SizedBox(width: 10),
                OutlineBtn(
                  onTap: () {},
                  text: 'Cancel',
                  width: 120,
                  height: 50,
                  fontSize: 20,
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
