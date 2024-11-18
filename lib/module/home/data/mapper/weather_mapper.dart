import '../../domain/entity/weather_entity.dart';
import '../dto/weather/weather_dto.dart';

class WeatherMapper {
  static WeatherEntity toEntity(WeatherDto dto) {
    return WeatherEntity(
      description: dto.description ?? 'No description available',
      icon: dto.icon ?? 'default_icon',
      temperature: dto.temperature ?? 0.0,
      feelsLike: dto.feelsLike ?? 0.0,
      minTemperature: dto.minTemperature ?? 0.0,
      maxTemperature: dto.maxTemperature ?? 0.0,
      humidity: dto.humidity ?? 0,
      windSpeed: dto.windSpeed ?? 0.0,
    );
  }

  static WeatherDto toDto(WeatherEntity entity) {
    return WeatherDto(
      description: entity.description,
      icon: entity.icon,
      temperature: entity.temperature,
      feelsLike: entity.feelsLike,
      minTemperature: entity.minTemperature,
      maxTemperature: entity.maxTemperature,
      humidity: entity.humidity,
      windSpeed: entity.windSpeed,
    );
  }
}
