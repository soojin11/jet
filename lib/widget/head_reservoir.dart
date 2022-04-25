import 'package:flutter/material.dart';
import 'package:w_jet/function/alert.dart';
import 'package:w_jet/widget/radio_box.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

class HeadAndReservoirWidget extends StatelessWidget {
  HeadAndReservoirWidget({Key? key, this.showText = false}) : super(key: key);
  bool showText;

  Widget container(String text, {double width = 50}) {
    return ReusedContainer(
      text,
      width: width,
      height: 40,
      fontSize: 15,
      radius: BorderRadius.circular(10),
    );
  }

  Widget btn(String text, Function() onTap) {
    return OutlineBtn(
      onTap: onTap,
      height: 40,
      width: 50,
      text: text,
      radius: BorderRadius.circular(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 80,
              height: 100,
              child: showText ? const Text('Head & Reservoir') : null,
            ),
            container('No', width: 80),
            container('HIB', width: 80),
            container('Head', width: 80),
            const SizedBox(width: 10),
            container('No', width: 80),
            container('HIB', width: 80),
            container('Head', width: 80),
          ],
        ),
        const SizedBox(width: 5),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 50, height: 100),
            container('2'),
            container('40.6'),
            // container('23.6'),
            btn('23.6', () {
              Alert.show(
                  title: 'Head No 1',
                  context: context,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BorderBox(child: const Text('설정온도')),
                          BorderBox(child: const Text('히팅')),
                          BorderBox(child: const Text('전체 헤드 설정')),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BorderBox(
                              child: TextField(
                            controller: TextEditingController(),
                          )),
                          OnAndOff(),
                          Checkbox(value: true, onChanged: (v) {})
                          //  )
                        ],
                      )
                    ],
                  ));
            }),
            const SizedBox(width: 10),
            container('1'),
            container('40.3'),
            container('23.6'),
          ],
        ),
        const SizedBox(width: 5),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                container('P', width: 80),
                const SizedBox(width: 20),
                // container('111', width: 80),
                btn('111', () {
                  Alert.show(
                      context: context,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BorderBox(child: const Text('Purge')),
                              BorderBox(child: const Text('Meniscus')),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BorderBox(),
                              BorderBox(),
                            ],
                          )
                        ],
                      ),
                      title: 'Reservoir 3 Pressure');
                })
              ],
            ),
            Row(
              children: [
                container('M', width: 80),
                const SizedBox(width: 20),
                // container('11', width: 80),
                btn('11', () {
                  Alert.show(
                      context: context,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BorderBox(child: const Text('Purge')),
                              BorderBox(child: const Text('Meniscus')),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BorderBox(),
                              BorderBox(),
                            ],
                          )
                        ],
                      ),
                      title: 'Reservoir 3 Pressure');
                })
              ],
            ),
            // Expanded(
            // child:
            ReusedContainer(
              "text",
              width: 200,
              height: 350,
              radius: BorderRadius.circular(10),
              boxColor: Colors.transparent,
            ),
            // )
          ],
        )
      ],
    );
  }
}
