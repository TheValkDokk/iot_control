// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'type.dart';

class Device {
  final String id;
  final String name;
  final Type type;
  Device({
    required this.id,
    required this.name,
    required this.type,
  });

  @override
  String toString() => 'Device(id: $id, name: $name, type: ${type.toString()})';
}

Device dummyDevice1 = Device(id: '0', name: 'Light', type: light);
Device dummyDevice2 = Device(id: '1', name: 'Light', type: light);
Device dummyDevice3 = Device(id: '2', name: 'Light', type: light);
Device dummyDevice4 = Device(id: '3', name: 'AC', type: ac);
Device dummyDevice5 = Device(id: '4', name: 'AC', type: ac);
