import 'package:flutter/material.dart';
import 'package:w_jet/widget/head_reservoir.dart';
import 'package:w_jet/widget/widget_container.dart';

class ManualHRpage extends StatelessWidget {
  const ManualHRpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        Expanded(
          child: Row(
            children: [
              Expanded(child: BorderBox()),
              Expanded(child: BorderBox()),
            ],
          ),
        )
      ],
    );
  }
}
