// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../weather_condition/weather_condition_dto.dart';
import '../weather_cord/weather_coord_dto.dart';
import '../weather_main/weather_main_dto.dart';
import '../weather_wind/weather_wind_dto.dart';

part 'weather_dto.g.dart';
part 'weather_dto.freezed.dart';

@Freezed(
  copyWith: false, genericArgumentFactories: true,
)
class WeatherDto with _$WeatherDto {
  const WeatherDto._();

  @JsonSerializable(
    includeIfNull: false,
  )
  const factory WeatherDto({
     final WeatherCoordDto? coord,
    final List<WeatherConditionDto>? weather,
    final WeatherMainDto? main,
    final WeatherWindDto? wind,
    final int? visibility,
    final int? dt,
    final String? name,
    final int? timezone,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}
