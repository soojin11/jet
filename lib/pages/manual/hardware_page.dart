import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../../widget/on_off.dart';

class HardWarePage extends StatelessWidget {
  const HardWarePage({Key? key}) : super(key: key);

  Widget borderBox(final String txt, {final double width = 120}) {
    return ReusedContainer(
      txt,
      width: width,
      height: 40,
      fontSize: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    borderBox('Light'),
                    borderBox('Current'),
                    borderBox('Set Value'),
                    borderBox('Target'),
                  ],
                ),
                Row(
                  children: [
                    borderBox('View'),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    OnAndOff(),
                    const SizedBox(width: 10),
                    borderBox('Set', width: 50),
                  ],
                ),
                Row(
                  children: [
                    borderBox('Nozzle'),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    OnAndOff(),
                    const SizedBox(width: 10),
                    borderBox('Set', width: 50),
                  ],
                ),
                Row(
                  children: [
                    borderBox('Align'),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    OnAndOff(),
                    const SizedBox(width: 10),
                    borderBox('Set', width: 50),
                  ],
                ),
              ],
            )),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    borderBox('UV'),
                    borderBox('Current'),
                    borderBox('Set Value'),
                    borderBox('Target'),
                  ],
                ),
                Row(
                  children: [
                    borderBox('365'),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    OnAndOff(),
                    const SizedBox(width: 10),
                    borderBox('Set', width: 50),
                  ],
                ),
                Row(
                  children: [
                    // const SizedBox(width: 50),
                    borderBox('395'),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    BorderBox(
                      child: TextField(
                        controller: TextEditingController(),
                      ),
                      height: 40,
                      width: 120,
                    ),
                    OnAndOff(), const SizedBox(width: 10),
                    borderBox('Set', width: 50),
                  ],
                ),
              ],
            )),
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Head Controller'),
                      Row(
                        children: [
                          borderBox('PC Power'),
                          const SizedBox(width: 10),
                          OnAndOff(
                            width: 120,
                          ),
                          const SizedBox(width: 10),
                          OutlineBtn(
                            onTap: () {},
                            text: 'Set',
                            width: 120,
                            height: 40,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          borderBox('Common'),
                          const SizedBox(width: 10),
                          OnAndOff(
                            width: 120,
                            isConnect: true,
                          ),
                          const SizedBox(width: 10),
                          OutlineBtn(
                            onTap: () {},
                            text: 'Set',
                            width: 120,
                            height: 40,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          borderBox('Execute Server', width: 380),
                          const SizedBox(width: 10),
                          OutlineBtn(
                            onTap: () {},
                            text: 'Set',
                            width: 120,
                            height: 40,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          borderBox('Restart Server', width: 380),
                          const SizedBox(width: 10),
                          OutlineBtn(
                            onTap: () {},
                            text: 'Set',
                            width: 120,
                            height: 40,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          borderBox('Shutdown Server', width: 380),
                          const SizedBox(width: 10),
                          OutlineBtn(
                            onTap: () {},
                            text: 'Set',
                            width: 120,
                            height: 40,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Chuck'),
                    Row(
                      children: [
                        borderBox('Vaccum'),
                        const SizedBox(width: 10),
                        OnAndOff(),
                        const SizedBox(width: 10),
                        OutlineBtn(
                          onTap: () {},
                          text: 'Set',
                          width: 120,
                          height: 40,
                        ),
                      ],
                    )
                  ],
                )),
          ],
        )),
      ],
    );
  }
}
