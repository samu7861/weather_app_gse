import '../../domain/entity/forecast_entity.dart';
import '../dto/forecast/forecast_dto.dart';

class ForecastMapper {
  static ForecastEntity toEntity(ForecastDto dto) {
    return ForecastEntity(
      date: dto.date ?? DateTime.now(),
      temperature: dto.temperature ?? 0.0,
      minTemperature: dto.minTemperature ?? 0.0,
      maxTemperature: dto.maxTemperature ?? 0.0,
      description: dto.description ?? 'No description available',
      icon: dto.icon ?? 'default_icon',
    );
  }

  static ForecastDto toDto(ForecastEntity entity) {
    return ForecastDto(
      date: entity.date,
      temperature: entity.temperature,
      minTemperature: entity.minTemperature,
      maxTemperature: entity.maxTemperature,
      description: entity.description,
      icon: entity.icon,
    );
  }
}
