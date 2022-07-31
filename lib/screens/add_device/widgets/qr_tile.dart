import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant.dart';

class QRTile extends StatelessWidget {
  const QRTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      color: Colors.grey.withOpacity(0.1),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(children: [
              WidgetSpan(child: Icon(Icons.qr_code_sharp)),
              TextSpan(
                text: '  Enter Device ID',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '\nCheck for QR code on your device',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ]),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.08,
                width: Get.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(
                      side: BorderSide(color: Constants.primaryColor, width: 3),
                    ),
                    primary: Colors.white,
                  ),
                  child: Text(
                    'Input Code',
                    style: GoogleFonts.kanit(
                      fontSize: 30,
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
