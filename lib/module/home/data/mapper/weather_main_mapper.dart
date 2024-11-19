import 'package:weather_app_gse/module/home/domain/entity/weather_main_entity.dart';

import '../dto/weather_main/weather_main_dto.dart';

class WeatherMainMapper {
  static WeatherMainEntity toEntity(WeatherMainDto dto) {
    return WeatherMainEntity(
      temp: dto.temp ?? 0.0,
      feelsLike: dto.feelsLike ?? 0.0,
      tempMin: dto.tempMin ?? 0.0,
      tempMax: dto.tempMax ?? 0.0,
      pressure: dto.pressure  ?? 0,
      humidity: dto.humidity ?? 0,
    );
  }

  static WeatherMainDto toDto(WeatherMainEntity entity) {
    return WeatherMainDto(
      temp: entity.temp,
      feelsLike: entity.feelsLike,
      tempMin: entity.tempMin,
      tempMax: entity.tempMax,
      pressure: entity.pressure,
      humidity: entity.humidity,
    );
  }
}
