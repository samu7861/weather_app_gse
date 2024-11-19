import 'package:equatable/equatable.dart';
import 'weather_coord_entity.dart';
import 'weather_condition_entity.dart';
import 'weather_main_entity.dart';
import 'weather_wind_entity.dart';

class WeatherEntity extends Equatable {
  final WeatherCoordEntity? coord;
  final List<WeatherConditionEntity>? weather;
  final WeatherMainEntity? main;
  final WeatherWindEntity? wind;
  final int? visibility;
  final int? dt;
  final String? name;
  final int? timezone;

  const WeatherEntity({
    required this.coord,
    required this.weather,
    required this.main,
    required this.wind,
    required this.visibility,
    required this.dt,
    required this.name,
    required this.timezone,
  });

  @override
  List<Object?> get props => [
        coord,
        weather,
        main,
        wind,
        visibility,
        dt,
        name,
        timezone,
      ];
}
