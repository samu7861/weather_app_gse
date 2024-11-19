import '../../domain/entity/weather_entity.dart';
import '../dto/weather/weather_dto.dart';
import 'weather_condition_mapper.dart';
import 'weather_coord_mapper.dart';
import 'weather_main_mapper.dart';
import 'weather_wind_mapper.dart';

class WeatherMapper {
  static WeatherEntity toEntity(WeatherDto dto) {
    return WeatherEntity(
      coord: dto.coord != null ? WeatherCoordMapper.toEntity(dto.coord!) : null,
      weather: dto.weather != null
          ? dto.weather!
              .map((condition) => WeatherConditionMapper.toEntity(condition))
              .toList()
          : null,
      main: dto.main != null ? WeatherMainMapper.toEntity(dto.main!) : null,
      wind: dto.wind != null ? WeatherWindMapper.toEntity(dto.wind!) : null,
      visibility: dto.visibility,
      dt: dto.dt,
      name: dto.name,
      timezone: dto.timezone,
    );
  }

  static WeatherDto toDto(WeatherEntity entity) {
    return WeatherDto(
      coord:
          entity.coord != null ? WeatherCoordMapper.toDto(entity.coord!) : null,
      weather: entity.weather != null
          ? entity.weather!
              .map((condition) => WeatherConditionMapper.toDto(condition))
              .toList()
          : null,
      main: entity.main != null ? WeatherMainMapper.toDto(entity.main!) : null,
      wind: entity.wind != null ? WeatherWindMapper.toDto(entity.wind!) : null,
      visibility: entity.visibility,
      dt: entity.dt,
      name: entity.name,
      timezone: entity.timezone,
    );
  }
}
