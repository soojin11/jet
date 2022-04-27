import 'package:flutter/material.dart';
import 'package:w_jet/function/alert.dart';
import 'package:w_jet/widget/on_off.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../config/wjet_color/status_color.dart';

class HRWidget extends StatelessWidget {
  HRWidget({Key? key, this.showText = false}) : super(key: key);
  bool showText;

  Widget container(String text, {double width = 50, double height = 40}) {
    return ReusedContainer(
      text,
      width: width,
      height: height,
      fontSize: 15,
      radius: BorderRadius.circular(10),
    );
  }

  Widget btn(String text, Function() onTap, {double height = 40}) {
    return OutlineBtn(
      onTap: onTap,
      height: height,
      width: 50,
      text: text,
      radius: BorderRadius.circular(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double long = 80;
    return IntrinsicWidth(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 80),
                      container('p', height: 35),
                      const SizedBox(width: 20),
                      btn('111', () {
                        Alert.show(
                            context: context,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(child: const Text('Purge')),
                                    BorderBox(child: const Text('Meniscus')),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(),
                                    BorderBox(),
                                  ],
                                )
                              ],
                            ),
                            title: 'Reservoir 3 Pressure');
                      }, height: 35)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 80),
                      container('M', height: 35),
                      const SizedBox(width: 20),
                      btn('11', () {
                        Alert.show(
                            context: context,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(child: const Text('Purge')),
                                    BorderBox(child: const Text('Meniscus')),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(),
                                    BorderBox(),
                                  ],
                                )
                              ],
                            ),
                            title: 'Reservoir 3 Pressure');
                      }, height: 35)
                    ],
                  ),
                ],
              )),
          Expanded(
            flex: 4,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              container('No', width: long),
                              const SizedBox(
                                height: 10,
                              ),
                              container('HIB', width: long),
                              const SizedBox(
                                height: 10,
                              ),
                              container('HEAD', width: long),
                            ],
                          ),
                          Column(
                            children: [
                              container('NO', width: long),
                              const SizedBox(
                                height: 10,
                              ),
                              container('HIB', width: long),
                              const SizedBox(
                                height: 10,
                              ),
                              container('HEAD', width: long),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              container('2'),
                              const SizedBox(
                                height: 10,
                              ),
                              container('40.3'),
                              const SizedBox(
                                height: 10,
                              ),
                              btn('23.6', () {
                                Alert.show(
                                    title: 'Head No 1',
                                    context: context,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            BorderBox(
                                                child: const Text('설정온도')),
                                            BorderBox(
                                                child: TextField(
                                              controller:
                                                  TextEditingController(),
                                            )),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            BorderBox(child: const Text('히팅')),
                                            OnAndOff(),
                                          ],
                                        ),
                                        OutlineBtn(
                                          onTap: () {},
                                          text: '전체 헤드 설정',
                                          borderColor: Wjet.black,
                                          bgColor: Wjet.white,
                                          txtColor: Wjet.black,
                                          height: 40,
                                          width: 340,
                                        )
                                      ],
                                    ));
                              }),
                            ],
                          ),
                          Column(
                            children: [
                              container('1'),
                              const SizedBox(
                                height: 10,
                              ),
                              container('40.3'),
                              const SizedBox(
                                height: 10,
                              ),
                              container('23.6'),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(color: Wjet.black),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class HeadAndReservoirWidget extends StatelessWidget {
//   HeadAndReservoirWidget({Key? key, this.showText = false}) : super(key: key);
//   bool showText;

//   Widget container(String text, {double width = 50}) {
//     return ReusedContainer(
//       text,
//       width: width,
//       height: 40,
//       fontSize: 15,
//       radius: BorderRadius.circular(10),
//     );
//   }

//   Widget btn(String text, Function() onTap) {
//     return OutlineBtn(
//       onTap: onTap,
//       height: 40,
//       width: 50,
//       text: text,
//       radius: BorderRadius.circular(10),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           children: [
//             SizedBox(
//               width: 80,
//               height: 80,
//               child: showText ? const Text('Head & Reservoir') : null,
//             ),
//             container('No', width: 80),
//             container('HIB', width: 80),
//             container('Head', width: 80),
//             container('No', width: 80),
//             container('HIB', width: 80),
//             container('Head', width: 80),
//           ],
//         ),
//         const SizedBox(width: 5),
//         Column(
//           children: [
//             const SizedBox(width: 50, height: 80),
//             container('2'),
//             container('40.6'),
//             btn('23.6', () {
//               Alert.show(
//                   title: 'Head No 1',
//                   context: context,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           BorderBox(child: const Text('설정온도')),
//                           BorderBox(
//                               child: TextField(
//                             controller: TextEditingController(),
//                           )),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           BorderBox(child: const Text('히팅')),
//                           OnAndOff(),
//                         ],
//                       ),
//                       OutlineBtn(
//                         onTap: () {},
//                         text: '전체 헤드 설정',
//                         borderColor: Colors.black,
//                         bgColor: Colors.white,
//                         txtColor: Colors.black,
//                         height: 40,
//                         width: 340,
//                       )
//                     ],
//                   ));
//             }),
//             container('1'),
//             container('40.3'),
//             container('23.6'),
//           ],
//         ),
//         const SizedBox(width: 5),
//         Column(
//           children: [
//             Row(
//               children: [
//                 container('P', width: 80),
//                 const SizedBox(width: 20),
//                 btn('111', () {
//                   Alert.show(
//                       context: context,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               BorderBox(child: const Text('Purge')),
//                               BorderBox(child: const Text('Meniscus')),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               BorderBox(),
//                               BorderBox(),
//                             ],
//                           )
//                         ],
//                       ),
//                       title: 'Reservoir 3 Pressure');
//                 })
//               ],
//             ),
//             Row(
//               children: [
//                 container('M', width: 80),
//                 const SizedBox(width: 20),
//                 btn('11', () {
//                   Alert.show(
//                       context: context,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               BorderBox(child: const Text('Purge')),
//                               BorderBox(child: const Text('Meniscus')),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               BorderBox(),
//                               BorderBox(),
//                             ],
//                           )
//                         ],
//                       ),
//                       title: 'Reservoir 3 Pressure');
//                 })
//               ],
//             ),
//             ReusedContainer(
//               "text",
//               width: 200,
//               height: 240,
//               radius: BorderRadius.circular(10),
//               boxColor: Colors.transparent,
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
