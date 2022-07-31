// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Type {
  String id;
  String name;
  IconData icon;
  Color color;
  Type(
      {required this.id,
      required this.name,
      required this.icon,
      required this.color});

  @override
  String toString() => 'Type(id: $id, name: $name)';
}

Type ac = Type(
    id: 'AC', name: 'Air Conditioner', icon: Icons.air, color: Colors.blue);
Type light = Type(
  id: 'Light',
  name: 'Light',
  icon: Icons.lightbulb_outline,
  color: Colors.amber,
);
