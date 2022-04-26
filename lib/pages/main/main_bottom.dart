import 'package:flutter/material.dart';

import '../../function/alert.dart';
import '../../widget/on_off.dart';
import '../../widget/widget_button.dart';
import '../../widget/widget_container.dart';

enum HcCommand { execute, restart, shutdown }

class MainBtm extends StatelessWidget {
  MainBtm({Key? key}) : super(key: key);
  Widget borderBox(
      {required Widget child, required String title, int flex = 1}) {
    return Expanded(
      child: RoundBorderBox(
        child: child,
        title: title,
      ),
      flex: flex,
    );
  }

  HcCommand? _command = HcCommand.execute;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                      onTap: () {
                        Alert.show(
                          context: context,
                          title: 'UV 365',
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  BorderBox(
                                    child: const Text('Intensity'),
                                  ),
                                  BorderBox(
                                    child: const Text('Set'),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  BorderBox(
                                    child: const Text('255(SV)'),
                                  ),
                                  OnAndOff(),
                                ],
                              )
                            ],
                          ),
                        );
                      },
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
                      onTap: () {
                        Alert.show(
                          context: context,
                          title: 'UV 395',
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  BorderBox(
                                    child: const Text('Intensity'),
                                  ),
                                  BorderBox(
                                    child: const Text('Set'),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  BorderBox(
                                    child: const Text('255(SV)'),
                                  ),
                                  OnAndOff(),
                                ],
                              )
                            ],
                          ),
                        );
                      },
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
                  onTap: () {
                    Alert.show(
                        context: context,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BorderBox(
                              child: const Text('Vacuum'),
                              width: 180,
                            ),
                            OnAndOff(),
                          ],
                        ),
                        title: 'Vacuum');
                  },
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
                      onTap: () {
                        Alert.show(
                            context: context,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(child: const Text('밝기')),
                                    BorderBox(child: const Text('조명')),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(child: const Text('255(SV)')),
                                    OnAndOff(),
                                  ],
                                )
                              ],
                            ),
                            title: 'View');
                      },
                      text: '255',
                      radius: BorderRadius.circular(10),
                      height: 40,
                      width: 80,
                    ),
                    OutlineBtn(
                      onTap: () {
                        Alert.show(
                            context: context,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(child: const Text('밝기')),
                                    BorderBox(child: const Text('조명')),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(child: const Text('123(SV)')),
                                    OnAndOff()
                                  ],
                                )
                              ],
                            ),
                            title: 'Nozzle');
                      },
                      text: '123',
                      radius: BorderRadius.circular(10),
                      height: 40,
                      width: 80,
                    ),
                    OutlineBtn(
                      onTap: () {
                        Alert.show(
                            context: context,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(child: const Text('밝기')),
                                    BorderBox(child: const Text('조명')),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    BorderBox(child: const Text('80(SV)')),
                                    OnAndOff()
                                  ],
                                )
                              ],
                            ),
                            title: 'Align');
                      },
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
                  onTap: () {
                    Alert.show(
                        context: context,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BorderBox(
                              child: const Text('Power'),
                              width: 180,
                            ),
                            OnAndOff()
                          ],
                        ),
                        title: 'PC Power');
                  },
                  text: 'PC Power On',
                  radius: BorderRadius.circular(10),
                  height: 40,
                  width: 200,
                ),
                OutlineBtn(
                  onTap: () {
                    Alert.show(
                        context: context,
                        child: OnAndOff(
                          width: 120,
                          isConnect: true,
                        ),
                        title: 'HC Interface');
                  },
                  text: 'Connected',
                  radius: BorderRadius.circular(10),
                  height: 40,
                  width: 200,
                ),
                OutlineBtn(
                  onTap: () {
                    Alert.show(
                        context: context,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                BorderBox(
                                  child: const Text('Execute Server'),
                                  width: 150,
                                ),
                                BorderBox(
                                  child: const Text('Restart Server'),
                                  width: 150,
                                ),
                                BorderBox(
                                  child: const Text('Shutdown Server'),
                                  width: 150,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                BorderBox(
                                  child: Radio<HcCommand>(
                                      value: HcCommand.execute,
                                      groupValue: _command,
                                      onChanged: (HcCommand? v) {
                                        _command = v;
                                      }),
                                  width: 150,
                                ),
                                BorderBox(
                                  child: Radio<HcCommand>(
                                      value: HcCommand.restart,
                                      groupValue: _command,
                                      onChanged: (HcCommand? v) {
                                        _command = v;
                                      }),
                                  width: 150,
                                ),
                                BorderBox(
                                  child: Radio<HcCommand>(
                                      value: HcCommand.shutdown,
                                      groupValue: _command,
                                      onChanged: (HcCommand? v) {
                                        _command = v;
                                      }),
                                  width: 150,
                                ),
                              ],
                            ),
                          ],
                        ),
                        title: 'HC Interface');
                  },
                  text: 'Error',
                  radius: BorderRadius.circular(10),
                  height: 40,
                  width: 200,
                ),
                // OutlineBtn(
                //   onTap: () {
                //     Alert.show(
                //         context: context,
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                //           children: [
                //             BorderBox(
                //               child: const Text('Execute Server'),
                //               width: 150,
                //             ),
                //             BorderBox(
                //               child: const Text('Restart Server'),
                //               width: 150,
                //             ),
                //             BorderBox(
                //               child: const Text('Shutdown Server'),
                //               width: 150,
                //             ),
                //           ],
                //         ),
                //         title: 'HC Interface');
                //   },
                //   text: 'Error',
                //   radius: BorderRadius.circular(10),
                //   height: 40,
                //   width: 200,
                // ),
              ],
            )),
      ],
    );
  }
}
