import 'package:equatable/equatable.dart';

class ForecastEntity extends Equatable {
  final DateTime date;
  final double temperature;
  final double minTemperature;
  final double maxTemperature;
  final String description;
  final String icon;

  const ForecastEntity({
    required this.date,
    required this.temperature,
    required this.minTemperature,
    required this.maxTemperature,
    required this.description,
    required this.icon,
  });

  @override
  List<Object?> get props => [
        date,
        temperature,
        minTemperature,
        maxTemperature,
        description,
        icon,
      ];
}
