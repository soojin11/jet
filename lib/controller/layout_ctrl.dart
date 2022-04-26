import 'package:get/get.dart';

class LayoutCtrl extends GetxController {
  static LayoutCtrl get to => Get.find();
  final RxInt tapIdx = RxInt(0);
  final RxInt manualIdx = RxInt(0);

  final RxDouble headTemp = RxDouble(0.0);
}
