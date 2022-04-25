import 'package:flutter/material.dart';
import 'package:w_jet/pages/footer.dart';
import 'package:w_jet/pages/header.dart';
import 'package:w_jet/pages/info.dart/main_info.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Header(),
            flex: 1,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: HeadReservoir()),
            flex: 7,
          ),
          const Expanded(
            child: Footer(),
            flex: 1,
          )
        ],
      ),
    );
  }
}
