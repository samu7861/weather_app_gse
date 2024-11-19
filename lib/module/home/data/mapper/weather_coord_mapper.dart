import 'package:weather_app_gse/module/home/domain/entity/weather_coord_entity.dart';

import '../dto/weather_cord/weather_coord_dto.dart';

class WeatherCoordMapper {
  static WeatherCoordEntity toEntity(WeatherCoordDto dto) {
    return WeatherCoordEntity(
      lon: dto.lon ?? 0.0,
      lat: dto.lat ?? 0.0,
    );
  }

  static WeatherCoordDto toDto(WeatherCoordEntity entity) {
    return WeatherCoordDto(
      lon: entity.lon,
      lat: entity.lat,
    );
  }
}
