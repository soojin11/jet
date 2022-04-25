import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:w_jet/function/alert.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  Widget currentTime(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Container(
          alignment: Alignment.center,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.blueGrey),
          ),
          child: Text(
            DateFormat('yyyy/MM/dd \n HH:mm:ss').format(DateTime.now()),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ReusedContainer(
            'WGS',
          ),
          flex: 1,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: currentTime(context),
          flex: 1,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlineBtn(
            onTap: () {
              Alert.show(
                  context: context,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    controller: ScrollController(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return BorderBox();
                    },
                  ),
                  title: 'Recipe');
            },
            text: 'Recipe Name',
            height: 100,
            fontSize: 30,
          ),
          flex: 2,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ReusedContainer(
            'PLC Interface Status',
            // width: 300,
          ),
          flex: 2,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ReusedContainer('EQ Status'),
          flex: 1,
        ),
      ],
    );
  }
}
