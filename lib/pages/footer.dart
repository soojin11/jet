import 'dart:io';
import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';
import '../config/wjet_color/status_color.dart';
import '../controller/layout_ctrl.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(0);
            },
            text: 'Main',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(1);
            },
            text: 'Manual',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(2);
            },
            text: 'Recipe',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(3);
            },
            text: 'Config',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              LayoutCtrl.to.tapIdx(4);
            },
            text: 'Log',
            height: 100,
            fontSize: 30,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
            child: OutlineBtn(
          onTap: () {},
          text: 'Stop',
          bgColor: Wjet.error,
          fontSize: 30,
          height: 100,
        )),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('종료하시겠습니까?'),
                      actions: [
                        OutlineBtn(
                          onTap: () {
                            exit(0);
                          },
                          width: 80,
                          height: 40,
                          text: '예',
                        ),
                        OutlineBtn(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          width: 80,
                          height: 40,
                          text: '취소',
                        )
                      ],
                    );
                  });
            },
            text: 'Exit',
            height: 100,
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
