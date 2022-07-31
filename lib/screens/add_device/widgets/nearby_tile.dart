import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant.dart';

class NearbyTile extends StatelessWidget {
  const NearbyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: Get.width * 0.9,
        color: Colors.grey.withOpacity(0.1),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            RichText(
              text: const TextSpan(children: [
                WidgetSpan(child: Icon(Icons.search)),
                TextSpan(
                  text: '  Scan For Nearby Devices',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      '\nUse when your device is nearby and ready to be added',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 20),
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
                  'Scan',
                  style: GoogleFonts.kanit(
                    fontSize: 30,
                    color: Constants.primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
