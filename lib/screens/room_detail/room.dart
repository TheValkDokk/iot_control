import 'package:flutter/material.dart';
import 'package:iot_control/service/room_service.dart';

import '../../models/room.dart';
import 'widget/room_tile.dart';

class RoomDetail extends StatelessWidget {
  const RoomDetail(this.room);

  final Room room;
  @override
  Widget build(BuildContext context) {
    final map = RoomService().deviceCount(room);
    return Scaffold(
      appBar: AppBar(
        title: Text(room.name),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 20,
        ),
        itemCount: map.entries.length,
        itemBuilder: (context, index) {
          return RoomTile(room, map.entries.elementAt(index));
        },
      ),
    );
  }
}
