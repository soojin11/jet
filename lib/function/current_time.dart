import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrentTime extends StatelessWidget {
  const CurrentTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Text(
          DateFormat('\n yyyy/MM/dd \n HH:mm:ss').format(DateTime.now()),
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
