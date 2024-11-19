import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

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
                    state.weather?.name ?? 'Unknown Location',
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (state.weather?.weather?.isNotEmpty ?? false)
                    _buildLottieAnimation(state.weather!.weather!.first.icon),
                  const SizedBox(height: 20),
                  Text(
                    '${state.weather?.main?.temp?.toStringAsFixed(1)}°C',
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    state.weather?.weather?.first.description ?? '',
                    style: const TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildWeatherDetails(state),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLottieAnimation(String? icon) {
    String animationPath;
    switch (icon) {
      case '01d':
        animationPath = 'assets/lottie/sunny.json';
        break;
      case '01n':
        animationPath = 'assets/lottie/clear_night.json';
        break;
      case '02d':
      case '02n':
        animationPath = 'assets/lottie/partly_cloudy.json';
        break;
      case '03d':
      case '03n':
      case '04d':
      case '04n':
        animationPath = 'assets/lottie/sunny.json';
        break;
      case '09d':
      case '09n':
      case '10d':
      case '10n':
        animationPath = 'assets/lottie/rain.json';
        break;
      case '11d':
      case '11n':
        animationPath = 'assets/lottie/thunderstorm.json';
        break;
      case '13d':
      case '13n':
        animationPath = 'assets/lottie/snow.json';
        break;
      case '50d':
      case '50n':
        animationPath = 'assets/lottie/mist.json';
        break;
      default:
        animationPath = 'assets/lottie/sunny.json';
        break;
    }
    return Lottie.asset(animationPath, width: 150, height: 150);
  }

  Widget _buildWeatherDetails(HomeState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Text('Feels like: ${state.weather?.main?.feelsLike?.toStringAsFixed(1)}°C'),
        Text('Min Temp: ${state.weather?.main?.tempMin?.toStringAsFixed(1)}°C'),
        Text('Max Temp: ${state.weather?.main?.tempMax?.toStringAsFixed(1)}°C'),
        Text('Humidity: ${state.weather?.main?.humidity}%'),
        Text('Pressure: ${state.weather?.main?.pressure} hPa'),
        Text('Wind Speed: ${state.weather?.wind?.speed} m/s'),
        Text('Wind Direction: ${state.weather?.wind?.deg}°'),
        if (state.weather?.wind?.gust != null)
          Text('Wind Gust: ${state.weather?.wind?.gust} m/s'),
        Text('Visibility: ${state.weather?.visibility} m'),
        Text('Timezone: ${state.weather?.timezone}'),
        Text('Date: ${DateTime.fromMillisecondsSinceEpoch((state.weather?.dt ?? 0) * 1000)}'),
      ],
    );
  }
}
