// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'device.dart';

class Room {
  final String id;
  final String name;
  final String photoUrl;
  final List<Device> devices;
  Room({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.devices,
  });

  @override
  String toString() {
    return 'Room(id: $id, name: $name, photoUrl: $photoUrl, devices: $devices)';
  }
}

Room dummyRoom1 = Room(
  id: '0',
  name: 'Living Room',
  photoUrl: 'assets/images/living.png',
  devices: [
    dummyDevice1,
    dummyDevice2,
    dummyDevice3,
    dummyDevice4,
    dummyDevice5,
  ],
);
Room dummyRoom2 = Room(
  id: '0',
  name: 'Bed Room',
  photoUrl: 'assets/images/bed.jpg',
  devices: [
    dummyDevice1,
    dummyDevice2,
    dummyDevice3,
    dummyDevice3,
    dummyDevice3,
    dummyDevice5,
  ],
);

List<Room> rooms = [dummyRoom1, dummyRoom2];
