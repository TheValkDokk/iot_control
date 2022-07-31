import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iot_control/models/device.dart';

import '../../constant.dart';
import '../../models/room.dart';
import '../add_device/add_device.dart';

class DeviceGroup extends StatelessWidget {
  DeviceGroup(this.room, this.name);
  final Room room;
  final String name;

  List<Device> devices = [];

  void getDevices() {
    devices = room.devices.where((device) => device.type == name).toList();
  }

  Widget listEmpty() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            FontAwesomeIcons.houseLaptop,
            size: Get.height * 0.3,
            color: Colors.grey.withOpacity(0.7),
          ),
          Text(
            'No devices found',
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
            width: Get.width * 0.7,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(AddDevice.routeName);
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Constants.primaryColor,
              ),
              child: Text(
                'Add Device',
                style: GoogleFonts.kanit(
                  fontSize: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(AddDevice.routeName);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: listEmpty(),
    );
  }
}
