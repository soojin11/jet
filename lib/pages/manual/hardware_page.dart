import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

import '../../widget/radio_box.dart';

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
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    // const SizedBox(width: 120),
                    borderBox('Light'),
                    borderBox('Current'),
                    borderBox('Set Value'),
                    borderBox('Target'),
                  ],
                ),
                Row(
                  children: [
                    // const SizedBox(width: 50),
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
                    OnAndOff(), const SizedBox(width: 10),
                    borderBox('Set', width: 50),
                  ],
                ),
                Row(
                  children: [
                    // const SizedBox(width: 50),
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
                    OnAndOff(), const SizedBox(width: 10),
                    borderBox('Set', width: 50),
                  ],
                ),
                Row(
                  children: [
                    // const SizedBox(width: 50),
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
                    OnAndOff(), const SizedBox(width: 10),
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
                    // const SizedBox(width: 120),
                    borderBox('UV'),
                    borderBox('Current'),
                    borderBox('Set Value'),
                    borderBox('Target'),
                  ],
                ),
                Row(
                  children: [
                    // const SizedBox(width: 50),
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
                    OnAndOff(), const SizedBox(width: 10),
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
            child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
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
                )),
            Expanded(
                flex: 1,
                child: Column(
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
        ))
      ],
    );
  }
}
