import 'package:flutter/material.dart';
import 'package:w_jet/widget/head_reservoir.dart';
import 'package:w_jet/widget/on_off.dart';
import 'package:w_jet/widget/widget_button.dart';
import 'package:w_jet/widget/widget_container.dart';

class ManualHRpage extends StatelessWidget {
  ManualHRpage({Key? key}) : super(key: key);
  List<Widget> tempList = List.generate(
      6,
      (index) => Row(
            children: [
              ReusedContainer('HEAD ${index + 1}'),
              const SizedBox(
                width: 10,
              ),
              BorderBox(
                width: 100,
                child: TextField(
                  controller: TextEditingController(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              BorderBox(
                width: 100,
                child: TextField(
                  controller: TextEditingController(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              BorderBox(
                width: 100,
                child: TextField(
                  controller: TextEditingController(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OnAndOff(),
              const SizedBox(
                width: 10,
              ),
              OutlineBtn(
                onTap: () {},
                text: 'Set',
                width: 50,
                height: 40,
              )
            ],
          ));

  List<Widget> pressList = List.generate(
      3,
      (index) => Row(
            children: [
              ReusedContainer('Meniscus ${index + 1}'),
              const SizedBox(
                width: 10,
              ),
              BorderBox(
                width: 100,
                child: TextField(
                  controller: TextEditingController(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              BorderBox(
                width: 100,
                child: TextField(
                  controller: TextEditingController(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              BorderBox(
                width: 100,
                child: TextField(
                  controller: TextEditingController(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OnAndOff(),
              const SizedBox(
                width: 10,
              ),
              OutlineBtn(
                onTap: () {},
                text: 'Set',
                width: 50,
                height: 40,
              )
            ],
          ));

  @override
  Widget build(BuildContext context) {
    tempList.insert(
      0,
      Row(
        children: [
          const SizedBox(
            child: Text('Temperature'),
            width: 80,
          ),
          const SizedBox(
            width: 10,
          ),
          ReusedContainer(
            'Current',
            width: 100,
          ),
          const SizedBox(
            width: 10,
          ),
          ReusedContainer(
            'Set Value',
            width: 100,
          ),
          const SizedBox(
            width: 10,
          ),
          ReusedContainer(
            'Target',
            width: 100,
          ),
        ],
      ),
    );

    pressList.insert(
      0,
      Row(
        children: [
          const SizedBox(
            child: Text('Temperature'),
            width: 80,
          ),
          const SizedBox(
            width: 10,
          ),
          ReusedContainer(
            'Current',
            width: 100,
          ),
          const SizedBox(
            width: 10,
          ),
          ReusedContainer(
            'Set Value',
            width: 100,
          ),
          const SizedBox(
            width: 10,
          ),
          ReusedContainer(
            'Target',
            width: 100,
          ),
        ],
      ),
    );

    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: HRWidget()),
              Expanded(child: HRWidget()),
              Expanded(child: HRWidget()),
            ],
          ),
        ),
        const SizedBox(height: 50),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: tempList,
                )),
                Expanded(
                    child: SizedBox(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: pressList,
                  ),
                )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
