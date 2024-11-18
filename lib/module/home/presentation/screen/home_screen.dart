import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../config/flavor/flavors.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  final Position position;

  const HomeScreen({super.key, required this.position});

  static const String name = 'home';
  static const String path = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            const Text('Home'),
            Text(F.title),
            Text('Latitude: ${position.latitude}'),
            Text('Longitude: ${position.longitude}'),
            Text('Altitude: ${position.altitude}'),
            Text('Accuracy: ${position.accuracy}'),
            Text('Heading: ${position.heading}'),
            Text('Speed: ${position.speed}'),
            Text('Speed Accuracy: ${position.speedAccuracy}'),
          ],
        ),
      ),
    ));
  }
}
