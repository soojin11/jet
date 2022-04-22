import 'package:flutter/material.dart';
import '../../widget/widget_button.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({Key? key}) : super(key: key);

  btn({required VoidCallback? onTap, String text = ''}) {
    return Expanded(
      flex: 1,
      child: OutlineBtn(
        onTap: onTap,
        height: 40,
        text: text,
        radius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Log'),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                children: [
                  btn(onTap: () {}, text: 'All'),
                  btn(onTap: () {}, text: 'System'),
                  btn(onTap: () {}, text: 'Result'),
                  btn(onTap: () {}, text: 'Alarm'),
                ],
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 30,
                  itemBuilder: (context, idx) {
                    return ListTile(
                      title: Text('$idx 로그 남기기이이'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
