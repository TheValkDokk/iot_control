import 'package:flutter/material.dart';

import '../../models/room.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [...rooms.map((e) => HomeTile(e)).toList()],
        ),
      ),
    );
  }
}
