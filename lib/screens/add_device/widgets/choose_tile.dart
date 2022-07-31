import 'package:flutter/material.dart';

class ChooseListDevice extends StatelessWidget {
  const ChooseListDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: const TextSpan(children: [
            WidgetSpan(child: Icon(Icons.view_quilt_sharp)),
            TextSpan(
              text: '  Choose from list of devices',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
