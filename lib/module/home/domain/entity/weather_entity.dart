import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final String description;
  final String icon;
  final double temperature;
  final double feelsLike;
  final double minTemperature;
  final double maxTemperature;
  final int humidity;
  final double windSpeed;

  const WeatherEntity({
    required this.description,
    required this.icon,
    required this.temperature,
    required this.feelsLike,
    required this.minTemperature,
    required this.maxTemperature,
    required this.humidity,
    required this.windSpeed,
  });

  @override
  List<Object?> get props => [
        description,
        icon,
        temperature,
        feelsLike,
        minTemperature,
        maxTemperature,
        humidity,
        windSpeed,
      ];
}
