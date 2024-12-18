import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/routes/app_router.dart';
import '../bloc/welcome_bloc.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String name = 'welcome';
  static const String path = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<WelcomeBloc, WelcomeState>(
        listener: (context, state) {
          if (state.isPermissionGranted == true) {
            context.router.push(
              const HomeRoute(),
            );
          }
        },
        child: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return SizedBox.expand(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Welcome'),
                  const Text(
                    "Weather App",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("For going further, please allow permissions"),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<WelcomeBloc>()
                          .add(const WelcomeEvent.getPermissions());
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                    ),
                    child: const Text(
                      "Allow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
