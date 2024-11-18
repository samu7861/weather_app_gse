import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  final double latitude;
  final double longitude;
  final String cityName;
  final String countryCode;

  const LocationEntity({
    required this.latitude,
    required this.longitude,
    required this.cityName,
    required this.countryCode,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        latitude,
        longitude,
        cityName,
        countryCode,
      ];
}
