import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../../widget/widget_button.dart';

class RecipePage extends StatelessWidget {
  RecipePage({Key? key}) : super(key: key);
  RxInt selectedIdx = RxInt(0);

  List test = List.generate(10, (index) => 'Recipe Name : $index');

  @override
  Widget build(BuildContext context) {
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
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    controller: ScrollController(),
                    itemCount: test.length,
                    itemBuilder: (context, index) {
                      return Obx(() => OutlineBtn(
                            onTap: () {
                              selectedIdx.value = index;
                            },
                            text: test[index],
                            height: 40,
                            bgColor: selectedIdx.value == index
                                ? Colors.amber
                                : Colors.white,
                            txtColor: Colors.black,
                          ));
                    },
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: BorderBox(
                    height: 600,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      controller: ScrollController(),
                      itemCount: test.length,
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
              onTap: () {},
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
              onTap: () {},
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
  }
}
