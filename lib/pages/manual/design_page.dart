import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:w_jet/widget/widget_button.dart';

import '../../config/wjet_color/status_color.dart';
import '../../widget/widget_container.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({Key? key}) : super(key: key);
  Widget borderBox(
    final String txt, {
    final double width = 180,
    final Color boxColor = Wjet.main4,
  }) {
    return ReusedContainer(
      txt,
      width: width,
      height: 50,
      fontSize: 20,
      boxColor: boxColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  borderBox('Width(mm)'),
                  BorderBox(
                    child: TextField(
                      controller: TextEditingController(),
                    ),
                    height: 50,
                    width: 120,
                  ),
                  borderBox('X DPI'),
                  BorderBox(
                    child: TextField(
                      controller: TextEditingController(),
                    ),
                    height: 50,
                    width: 120,
                  ),
                ],
              ),
              Row(
                children: [
                  borderBox('Height(mm)'),
                  BorderBox(
                    child: TextField(
                      controller: TextEditingController(),
                    ),
                    height: 50,
                    width: 120,
                  ),
                  borderBox('Y DPI'),
                  BorderBox(
                    child: TextField(
                      controller: TextEditingController(),
                    ),
                    height: 50,
                    width: 120,
                  ),
                ],
              ),
              Row(
                children: [
                  borderBox('Cad Path'),
                  borderBox('', width: 350, boxColor: Wjet.transparent),
                  OutlineBtn(
                    onTap: () async {
                      await FilePicker.platform.pickFiles(
                          type: FileType.custom, allowedExtensions: ['dxf']);
                    },
                    text: '...',
                    height: 50,
                    width: 50,
                  )
                ],
              ),
              Row(
                children: [
                  borderBox('Output Path'),
                  borderBox('', width: 350, boxColor: Wjet.transparent),
                  OutlineBtn(
                    onTap: () async {
                      // await FilePicker.platform.pickFiles(
                      //     type: FileType.custom, allowedExtensions: ['dxf']);
                    },
                    text: '...',
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ],
          ),
          OutlineBtn(
            width: 100,
            onTap: () {},
            text: 'Execute',
          )
        ],
      ),
    );
  }
}
