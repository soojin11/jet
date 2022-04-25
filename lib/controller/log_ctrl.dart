import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogCtrl extends GetxController {
  static LogCtrl get to => Get.find();

  Widget listView({required final int count, required final String txt}) {
    return SizedBox(
      height: 400,
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

  Widget selectLog(int idx) {
    switch (idx) {
      case 0:
        return listView(count: 10, txt: 'All');
      case 1:
        return listView(count: 3, txt: 'System');
      case 2:
        return listView(count: 6, txt: 'Result');
      case 3:
        return listView(count: 8, txt: 'Alarm');

      default:
        return listView(count: 10, txt: 'All');
    }
  }
}
