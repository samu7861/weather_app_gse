import 'package:equatable/equatable.dart';

class WeatherWindEntity extends Equatable {
  final double? speed;
  final int? deg;
  final double? gust;

  const WeatherWindEntity({
    required this.speed,
    required this.deg,
    this.gust,
  });

  @override
  List<Object?> get props => [
        speed,
        deg,
        gust,
      ];
}