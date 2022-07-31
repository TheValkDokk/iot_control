import '../models/room.dart';

class RoomService {
  Map<String, int> deviceCount(Room room) {
    final getListOfType = room.devices.map((e) => e.type).toSet().toList();
    Map<String, int> count = {};
    for (var e in getListOfType) {
      count[e.name] = 0;
      for (var element in room.devices) {
        if (e == element.type) {
          count.update(e.name, (value) => ++value);
        }
      }
    }
    return count;
  }
}
