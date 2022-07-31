import 'package:flutter/material.dart';

import 'widgets/choose_tile.dart';
import 'widgets/nearby_tile.dart';
import 'widgets/qr_tile.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({Key? key}) : super(key: key);

  static const routeName = '/add_device';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Device'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            NearbyTile(),
            QRTile(),
            ChooseListDevice(),
          ],
        ),
      ),
    );
  }
}
