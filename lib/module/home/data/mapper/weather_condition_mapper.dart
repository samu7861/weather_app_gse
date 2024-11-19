import 'package:weather_app_gse/module/home/domain/entity/weather_condition_entity.dart';

import '../dto/weather_condition/weather_condition_dto.dart';

class WeatherConditionMapper {
  static WeatherConditionEntity toEntity(WeatherConditionDto dto) {
    return WeatherConditionEntity(
      id: dto.id ?? 0,
      main: dto.main ?? '',
      description: dto.description ?? '',
      icon: dto.icon ?? '',
    );
  }


  static WeatherConditionDto toDto(WeatherConditionEntity entity) {
    return WeatherConditionDto(
      id: entity.id,
      main: entity.main,
      description: entity.description,
      icon: entity.icon,
    );
  }
}
