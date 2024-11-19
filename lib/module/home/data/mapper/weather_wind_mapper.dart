import 'package:weather_app_gse/module/home/domain/entity/weather_wind_entity.dart';

import '../dto/weather_wind/weather_wind_dto.dart';

class WeatherWindMapper {
  static WeatherWindEntity toEntity(WeatherWindDto dto) {
    return WeatherWindEntity(
      speed: dto.speed ?? 0.0,
      deg: dto.deg ?? 0,
      gust: dto.gust ?? 0.0,
    );
  }

  static WeatherWindDto toDto(WeatherWindEntity entity) {
    return WeatherWindDto(
      speed: entity.speed,
      deg: entity.deg,
      gust: entity.gust,
    );
  }
}
