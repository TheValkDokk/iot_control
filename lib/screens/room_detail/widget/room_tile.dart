import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/room.dart';
import '../../../models/type.dart';
import '../../device_group/device_group.dart';

class RoomTile extends StatelessWidget {
  const RoomTile(this.room, this.map);

  final Room room;
  final MapEntry<String, int> map;

  Color findColor() {
    return map.key == 'Air Conditioner' ? Colors.blue : Colors.amber;
  }

  Type findTypeByName() {
    return map.key == 'Air Conditioner' ? ac : light;
  }

  @override
  Widget build(BuildContext context) {
    final Type type = findTypeByName();
    return InkWell(
      onTap: () {
        Get.to(() => DeviceGroup(room, map.key));
      },
      child: Badge(
        badgeContent: Text(
          map.value.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        badgeColor: findColor(),
        position: BadgePosition.topEnd(top: 5, end: 5),
        child: SizedBox(
          height: 120,
          width: 120,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  type.icon,
                  size: 50,
                  color: findColor(),
                ),
                FittedBox(
                  child: Text(
                    type.name,
                    style: GoogleFonts.kanit(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
