import '../../domain/entity/location_entity.dart';
import '../dto/location/location_dto.dart';

class LocationMapper {
  static LocationEntity toEntity(LocationDto dto) {
    return LocationEntity(
      latitude: dto.lat ?? 0.0,
      longitude: dto.lon ?? 0.0,
      cityName: dto.cityName ?? 'Unknown',
      countryCode: dto.countryCode ?? 'XX',
    );
  }

  static LocationDto toDto(LocationEntity entity) {
    return LocationDto(
      lat: entity.latitude,
      lon: entity.longitude,
      cityName: entity.cityName,
      countryCode: entity.countryCode,
    );
  }
}
