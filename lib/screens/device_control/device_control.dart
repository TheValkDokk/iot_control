import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DeviceControl extends StatefulWidget {
  const DeviceControl({Key? key}) : super(key: key);

  @override
  State<DeviceControl> createState() => _DeviceControlState();
}

class _DeviceControlState extends State<DeviceControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Control'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(15),
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Auto'),
                        Text('Cool'),
                        Text('Dry'),
                        Text('Heat'),
                        Text('Fan'),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Tempature'),
                        const Text(
                          '25 C',
                          style: TextStyle(fontSize: 80),
                        ),
                        RichText(
                          text: const TextSpan(children: [
                            WidgetSpan(
                              child: Icon(Icons.wind_power),
                            ),
                            TextSpan(
                              text: '.....',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        primary: Colors.red,
                        minimumSize: Size(Get.width * 0.1, Get.width * 0.3),
                      ),
                      child: Icon(
                        Icons.power_settings_new,
                        size: Get.width * 0.17,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.4,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        primary: const Color(0xff3996AE),
                      ),
                      child: const Text(
                        'Eco',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: const Color(0xFF1B1B1A),
                          ),
                          child: const Text(
                            'Mode',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.05),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: const Color(0xFF1B1B1A),
                          ),
                          child: const Text(
                            'Fan',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: const Color(0xFF1B1B1A),
                          ),
                          child: const Icon(Icons.add),
                        ),
                        SizedBox(height: Get.height * 0.05),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: const Color(0xFF1B1B1A),
                          ),
                          child: const Icon(Icons.remove),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: const Color(0xFF1B1B1A),
                          ),
                          child: const Icon(FontAwesomeIcons.leftRight),
                        ),
                        SizedBox(height: Get.height * 0.05),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: const Color(0xFF1B1B1A),
                          ),
                          child: const Icon(FontAwesomeIcons.upDown),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.08,
                          width: Get.width * 0.4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF1B1B1A),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            child: const Text('SLEEP'),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.025),
                        SizedBox(
                          height: Get.height * 0.08,
                          width: Get.width * 0.4,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF1B1B1A),
                                shape: const StadiumBorder(),
                              ),
                              onPressed: () {},
                              child: const Text('TIME ON')),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.08,
                          width: Get.width * 0.4,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF1B1B1A),
                                shape: const StadiumBorder(),
                              ),
                              onPressed: () {},
                              child: const Text('TURBO')),
                        ),
                        SizedBox(height: Get.height * 0.025),
                        SizedBox(
                          height: Get.height * 0.08,
                          width: Get.width * 0.4,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF1B1B1A),
                                shape: const StadiumBorder(),
                              ),
                              onPressed: () {},
                              child: const Text('TIME OFF')),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
