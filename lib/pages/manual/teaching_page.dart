import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';
import '../../widget/widget_container.dart';

class TeachingPage extends StatelessWidget {
  const TeachingPage({Key? key}) : super(key: key);
  Widget borderBox(final String txt, {final double width = 180}) {
    return ReusedContainer(
      txt,
      width: width,
      height: 50,
      fontSize: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 50, height: 50),
                  const SizedBox(width: 180, height: 50),
                  borderBox('111'),
                  borderBox('111'),
                  borderBox('111'),
                  borderBox('111'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 50, height: 50),
                  const SizedBox(width: 180, height: 50),
                  borderBox('X'),
                  borderBox('Y'),
                  borderBox('Z'),
                  borderBox('T'),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const SizedBox(width: 50, height: 50),
                        // const SizedBox(width: 180, height: 50),
                        borderBox('V', width: 50),
                        borderBox('bb'),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const SizedBox(width: 50, height: 50),
                        // const SizedBox(width: 180, height: 50),
                        borderBox('', width: 50),
                        borderBox('cc'),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        borderBox('', width: 50),
                        borderBox('dd'),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                        BorderBox(
                          child: TextField(
                            controller: TextEditingController(),
                          ),
                          height: 50,
                          width: 180,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineBtn(
              onTap: () {},
              text: 'New',
              width: 120,
              height: 50,
              fontSize: 20,
            ),
            const SizedBox(width: 10),
            OutlineBtn(
              onTap: () {},
              text: 'Save',
              width: 120,
              height: 50,
              fontSize: 20,
            ),
            const SizedBox(width: 10),
            OutlineBtn(
              onTap: () {},
              text: 'Delete',
              width: 120,
              height: 50,
              fontSize: 20,
            ),
            const SizedBox(width: 10),
            OutlineBtn(
              onTap: () {},
              text: 'Refresh',
              width: 120,
              height: 50,
              fontSize: 20,
            ),
            const SizedBox(width: 10),
            OutlineBtn(
              onTap: () {},
              text: 'Target Move',
              width: 120,
              height: 50,
              fontSize: 20,
            ),
          ],
        )
      ],
    );
  }
}
