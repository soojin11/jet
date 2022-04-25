import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';

abstract class Alert {
  static Future show(
      {required final BuildContext context,
      required Widget child,
      required String title}) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 400,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(title),
                    width: 400,
                    height: 40,
                    decoration: const BoxDecoration(
                        border: Border(
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                  ),
                  Container(
                      width: 400,
                      height: 350,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: child,
                            height: 250,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlineBtn(
                                  onTap: () {},
                                  text: 'Apply',
                                  bgColor: Colors.transparent,
                                  txtColor: Colors.black,
                                  width: 100,
                                  height: 40,
                                  borderColor: Colors.black,
                                  radius: BorderRadius.circular(10)),
                              const SizedBox(width: 35),
                              OutlineBtn(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                text: 'Cancel',
                                bgColor: Colors.transparent,
                                txtColor: Colors.black,
                                width: 100,
                                height: 40,
                                borderColor: Colors.black,
                                radius: BorderRadius.circular(10),
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        });
  }
}
