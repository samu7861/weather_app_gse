import 'package:equatable/equatable.dart';

class UserPreferencesEntity extends Equatable {
  final String temperatureUnit;
  final String language;
  final bool useCurrentLocation;

  const UserPreferencesEntity({
    required this.temperatureUnit,
    required this.language,
    required this.useCurrentLocation,
  });

  @override
  List<Object?> get props => [
        temperatureUnit,
        language,
        useCurrentLocation,
      ];
}
