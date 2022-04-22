import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_container.dart';

class HeadAndReservoirWidget extends StatelessWidget {
  const HeadAndReservoirWidget({Key? key}) : super(key: key);
  container(text) {
    return ReusedContainer(
      text,
      width: 50,
      height: 50,
      fontSize: 15,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const SizedBox(width: 50, height: 100),
            container('No'),
            container('HIB'),
            container('Head'),
            container('No'),
            container(
              'HIB',
            ),
            container('Head'),
          ],
        ),
        const SizedBox(width: 5),
        Column(
          children: [
            const SizedBox(width: 50, height: 100),
            container('2'),
            container('40.3'),
            container('23.6'),
            container(
              '1',
            ),
            container('40.3'),
            container('23.6'),
          ],
        ),
        const SizedBox(width: 5),
        Column(
          children: [
            Row(
              children: [
                container('P'),
                container('111'),
              ],
            ),
            Row(
              children: [container('M'), container('11')],
            ),
            ReusedContainer(
              "text",
              height: 300,
              width: 200,
            )
          ],
        )
      ],
    );
  }
}
