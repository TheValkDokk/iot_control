import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../constant.dart';
import 'device_control/device_control.dart';
import 'home/home.dart';

class PageNavigator extends StatefulWidget {
  const PageNavigator({Key? key}) : super(key: key);
  static const routeName = '/page_navigator';

  @override
  State<PageNavigator> createState() => _PageNavigatorState();
}

class _PageNavigatorState extends State<PageNavigator> {
  int currentIndex = 0;
  Widget switchPage(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const Center(child: Text('Schedule'));
      case 2:
        return const Center(child: Text('Scripts'));
      case 3:
        return const DeviceControl();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switchPage(currentIndex),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.primaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.add_box_rounded,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: StylishBottomBar(
        items: [
          AnimatedBarItems(
              icon: const Icon(
                Icons.home,
              ),
              selectedColor: Constants.primaryColor,
              unSelectedColor: Constants.primaryColor.withOpacity(0.3),
              backgroundColor: Colors.amber,
              title: const Text('Home')),
          AnimatedBarItems(
              icon: const Icon(
                Icons.schedule,
              ),
              selectedColor: Constants.primaryColor,
              unSelectedColor: Constants.primaryColor.withOpacity(0.4),
              backgroundColor: Colors.amber,
              title: const Text('Schedule')),
          AnimatedBarItems(
              icon: const Icon(
                Icons.notes,
              ),
              backgroundColor: Colors.amber,
              unSelectedColor: Constants.primaryColor.withOpacity(0.4),
              selectedColor: Constants.primaryColor,
              title: const Text('Scripts')),
          AnimatedBarItems(
              icon: const Icon(
                Icons.settings,
              ),
              unSelectedColor: Constants.primaryColor.withOpacity(0.4),
              backgroundColor: Colors.amber,
              selectedColor: Constants.primaryColor,
              title: const Text('Settings')),
          // BubbleBarItem(icon: Icon(Icons.home), title: Text('Home')),
          // BubbleBarItem(icon: Icon(Icons.add_circle_outline), title: Text('Add')),
          // BubbleBarItem(icon: Icon(Icons.person), title: Text('Profile')),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value!;
          });
        },
        iconSize: 32,
        barAnimation: BarAnimation.liquid,
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        opacity: 0.3,
        currentIndex: currentIndex,
      ),
    );
  }
}
