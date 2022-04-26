import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogCtrl extends GetxController {
  static LogCtrl get to => Get.find();

  final Rx<DateTime> pickDate = Rx(DateTime.now());

  Widget listView(
      {required final int count,
      required final String txt,
      required BuildContext context}) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.36,
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        shrinkWrap: true,
        itemCount: count,
        itemBuilder: (context, idx) {
          return ListTile(
            title: Text('$idx $txt'),
          );
        },
      ),
    );
  }

  Widget selectLog(int idx, {required BuildContext context}) {
    switch (idx) {
      case 0:
        return listView(count: 10, txt: 'All', context: context);
      case 1:
        return listView(count: 3, txt: 'System', context: context);
      case 2:
        return listView(count: 6, txt: 'Result', context: context);
      case 3:
        return listView(count: 8, txt: 'Alarm', context: context);

      default:
        return listView(count: 10, txt: 'All', context: context);
    }
  }
}
