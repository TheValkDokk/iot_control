import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iot_control/models/room.dart';

import '../../../constant.dart';
import '../../../service/room_service.dart';
import '../../room_detail/room.dart';

class HomeTile extends StatelessWidget {
  const HomeTile(this.room);

  final Room room;

  @override
  Widget build(BuildContext context) {
    double height = Get.height * 0.2;
    double width = Get.width * 0.92;
    return InkWell(
      onTap: () {
        Get.to(() => RoomDetail(room));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    room.photoUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Constants.primaryColor.withOpacity(0.3),
                      Constants.primaryColor.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert,
                      color: Colors.white, size: 35),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      room.name,
                      style: GoogleFonts.kanit(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   '${room.devices.length} devices',
                    //   style: const TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 15,
                    //   ),
                    // ),
                    Row(children: renderCount(RoomService().deviceCount(room))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> renderCount(Map<String, int> count) {
    return count.entries.map((e) {
      return Text(
        ' \u00B7 ${e.value} ${e.key}',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      );
    }).toList();
  }
}
