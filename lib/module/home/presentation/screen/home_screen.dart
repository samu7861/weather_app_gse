import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../config/flavor/flavors.dart';
import '../bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = 'home';
  static const String path = '/home';

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        context.read<HomeBloc>().add(const HomeEvent.started());

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
                  Text('Latitude: ${state.position?.latitude}'),
                  Text('Longitude: ${state.position?.longitude}'),
                  Text('Altitude: ${state.position?.altitude}'),
                  Text('Accuracy: ${state.position?.accuracy}'),
                  Text('Heading: ${state.position?.heading}'),
                  Text('Speed: ${state.position?.speed}'),
                  Text('Speed Accuracy: ${state.position?.speedAccuracy}'),
                  const Divider(),
                  Text('Temperature: ${state.weather?.temperature}°C'),
                  Text('Weather: ${state.weather?.description}'),
                  Text('Humidity: ${state.weather?.humidity}%'),
                  Text('Wind Speed: ${state.weather?.windSpeed} m/s'),
                  //
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
