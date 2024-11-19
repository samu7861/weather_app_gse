import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../config/flavor/flavors.dart';
import '../bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = 'home';
  static const String path = '/home';

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeEvent.started());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        automaticallyImplyLeading: false,
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              return Column(
                children: [
                  Text(
                    "This is your current location: ${state.position?.latitude}, ${state.position?.longitude} ",
                  ),
                  Text(
                    "This is your CITY: ${state.weather?.name} ",
                  ),
                  Text(
                    state.weather?.wind?.speed?.toString() ?? 'N/A',
                  )
                  // Text(
                  //   "This is your TEMP: ${state.weather!.main?.temp } ",
                  // ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
