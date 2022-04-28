import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_jet/controller/layout_ctrl.dart';
import 'package:w_jet/controller/teaching_ctrl.dart';
import 'package:w_jet/pages/home.dart';

import 'controller/log_ctrl.dart';
import 'controller/recipe_ctrl.dart';

void main() async {
  Get.put(LayoutCtrl());
  Get.put(LogCtrl());
  Get.put(RecipeCtrl());
  Get.put(TeachingCtrl());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          body: MainHome(),
        ));
  }
}
