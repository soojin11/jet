import 'package:get/get.dart';

class TeachingCtrl extends GetxController {
  static TeachingCtrl get to => Get.find();
  final RxList<int> newTeach = RxList.empty(growable: true);

  Future<bool> getTeaching() async {
    try {
      return true;
    } catch (e) {
      return false;
    }
  }

  void deleteTeaching() {
    if (newTeach.isNotEmpty) {
      newTeach.removeAt(0);
    }
  }

  void addTeaching() {
    newTeach.add(1
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     BorderBox(
        //       child: Text(''),
        //       width: 50,
        //       height: 50,
        //       bgColor: Wjet.main,
        //     ),
        //     const SizedBox(
        //       width: 10,
        //       height: 50,
        //     ),
        //     BorderBox(
        //       child: Text(''),
        //       width: 180,
        //       height: 50,
        //       bgColor: Wjet.main,
        //     ),
        //     const SizedBox(width: 10),
        //     BorderBox(
        //       child: TextField(
        //         controller: TextEditingController(),
        //       ),
        //       height: 50,
        //       width: 180,
        //     ),
        //     const SizedBox(width: 10),
        //     BorderBox(
        //       child: TextField(
        //         controller: TextEditingController(),
        //       ),
        //       height: 50,
        //       width: 180,
        //     ),
        //     const SizedBox(width: 10),
        //     BorderBox(
        //       child: TextField(
        //         controller: TextEditingController(),
        //       ),
        //       height: 50,
        //       width: 180,
        //     ),
        //     const SizedBox(width: 10),
        //     BorderBox(
        //       child: TextField(
        //         controller: TextEditingController(),
        //       ),
        //       height: 50,
        //       width: 180,
        //     ),
        //   ],
        // ),
        );
  }
}
