import 'package:flutter/material.dart';
import 'package:w_jet/pages/info.dart/log.dart';
import 'package:w_jet/widget/head_reservoir.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

class HeadReservoir extends StatelessWidget {
  const HeadReservoir({Key? key}) : super(key: key);
  borderBox({required Widget child, required String title, int flex = 1}) {
    return Expanded(
      child: BorderBox(
        child: child,
        title: title,
      ),
      flex: flex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          // height: 100,
                          child: Row(
                            children: const [
                              HeadAndReservoirWidget(),
                              HeadAndReservoirWidget(),
                              HeadAndReservoirWidget(),
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(50))),
                      flex: 5,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.symmetric(
                          //     horizontal: 20, vertical: 10),
                          width: 100,
                          height: 600,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(50)),
                          child: const LogScreen()),
                      flex: 2,
                    ),
                    //
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    borderBox(
                        title: 'UV',
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ReusedContainer(
                                  '365 Intensity',
                                  height: 40,
                                  width: 150,
                                  fontSize: 15,
                                  radius: BorderRadius.circular(8),
                                ),
                                const SizedBox(width: 10),
                                OutlineBtn(
                                  onTap: () {},
                                  text: '255',
                                  height: 40,
                                  width: 60,
                                  radius: BorderRadius.circular(8),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ReusedContainer(
                                  '395 Intensity',
                                  height: 40,
                                  width: 150,
                                  fontSize: 15,
                                  radius: BorderRadius.circular(8),
                                ),
                                const SizedBox(width: 10),
                                OutlineBtn(
                                  onTap: () {},
                                  text: '255',
                                  height: 40,
                                  width: 60,
                                  radius: BorderRadius.circular(8),
                                )
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(width: 10),
                    borderBox(
                        title: 'Chuck',
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ReusedContainer(
                              'Glass Detect',
                              radius: BorderRadius.circular(10),
                              height: 40,
                              width: 250,
                              fontSize: 15,
                            ),
                            OutlineBtn(
                              onTap: () {},
                              text: 'Vaccuum',
                              height: 40,
                              width: 250,
                              radius: BorderRadius.circular(8),
                            ),
                          ],
                        )),
                    const SizedBox(width: 10),
                    borderBox(
                        flex: 2,
                        title: 'Vision',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ReusedContainer(
                                  'View',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 200,
                                  fontSize: 15,
                                ),
                                ReusedContainer(
                                  'Nozzle',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 200,
                                  fontSize: 15,
                                ),
                                ReusedContainer(
                                  'Align',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 200,
                                  fontSize: 15,
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ReusedContainer(
                                  'Live',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 100,
                                  fontSize: 15,
                                ),
                                ReusedContainer(
                                  'Idle',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 100,
                                  fontSize: 15,
                                ),
                                ReusedContainer(
                                  'Idle',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 100,
                                  fontSize: 15,
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                OutlineBtn(
                                  onTap: () {},
                                  text: '255',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 80,
                                ),
                                OutlineBtn(
                                  onTap: () {},
                                  text: '123',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 80,
                                ),
                                OutlineBtn(
                                  onTap: () {},
                                  text: '80',
                                  radius: BorderRadius.circular(10),
                                  height: 40,
                                  width: 80,
                                ),
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(width: 10),
                    borderBox(
                        title: 'Head Controller',
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OutlineBtn(
                              onTap: () {},
                              text: 'PC Power On',
                              radius: BorderRadius.circular(10),
                              height: 40,
                              width: 200,
                            ),
                            OutlineBtn(
                              onTap: () {},
                              text: 'Connected',
                              radius: BorderRadius.circular(10),
                              height: 40,
                              width: 200,
                            ),
                            OutlineBtn(
                              onTap: () {},
                              text: 'Error',
                              radius: BorderRadius.circular(10),
                              height: 40,
                              width: 200,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusedContainer(
                'Initail',
                height: 50,
                fontSize: 20,
              ),
              ReusedContainer(
                'Panel Align',
                height: 50,
                fontSize: 20,
              ),
              ReusedContainer(
                'Print',
                height: 50,
                fontSize: 20,
              ),
              ReusedContainer(
                'DPC',
                height: 50,
                fontSize: 20,
              ),
              ReusedContainer(
                'Periodic Jetting',
                height: 50,
                fontSize: 20,
              ),
              ReusedContainer(
                'Short Purge',
                height: 50,
                fontSize: 20,
              ),
              const SizedBox(height: 70),
              ReusedContainer(
                '드롭박스 넣기',
                height: 50,
                fontSize: 20,
              ),
              ReusedContainer(
                'Short Purge',
                height: 50,
                fontSize: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
