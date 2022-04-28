import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/config/wjet_color/status_color.dart';
import 'package:w_jet/widget/widget_button.dart';
import '../../controller/teaching_ctrl.dart';
import '../../widget/widget_container.dart';

class TeachingPage extends StatelessWidget {
  TeachingPage({Key? key}) : super(key: key);
  RxInt selectedIdx = RxInt(0);

  Widget borderBox(final String txt, {final double width = 180}) {
    return ReusedContainer(
      txt,
      width: width,
      height: 50,
      fontSize: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 70, height: 50),
                const SizedBox(width: 180, height: 50),
                borderBox('111'),
                const SizedBox(width: 10),
                borderBox('111'),
                const SizedBox(width: 10),
                borderBox('111'),
                const SizedBox(width: 10),
                borderBox('111'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 70, height: 50),
                const SizedBox(width: 180, height: 50),
                borderBox('X'),
                const SizedBox(width: 10),
                borderBox('Y'),
                const SizedBox(width: 10),
                borderBox('Z'),
                const SizedBox(width: 10),
                borderBox('T'),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: Obx(
                () => ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  controller: ScrollController(),
                  itemCount: TeachingCtrl.to.newTeach.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BorderBox(
                          child: Text(''),
                          width: 50,
                          height: 50,
                          bgColor: Wjet.main,
                        ),
                        const SizedBox(
                          width: 10,
                          height: 50,
                        ),
                        BorderBox(
                          child: Text(''),
                          width: 180,
                          height: 50,
                          bgColor: Wjet.main,
                        ),
                        const SizedBox(width: 10),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        const SizedBox(width: 10),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        const SizedBox(width: 10),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        const SizedBox(width: 10),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineBtn(
              onTap: () {
                TeachingCtrl.to.addTeaching();
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
                TeachingCtrl.to.deleteTeaching();
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
              text: 'Target Move',
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
