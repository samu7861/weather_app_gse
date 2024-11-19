import 'package:equatable/equatable.dart';

class WeatherCoordEntity extends Equatable {
  final double? lon;
  final double? lat;

  const WeatherCoordEntity({
    required this.lon,
    required this.lat,
  });

  @override
  List<Object?> get props => [
        lon,
        lat,
      ];
}