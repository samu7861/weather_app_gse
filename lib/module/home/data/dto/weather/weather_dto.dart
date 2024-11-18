// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

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
    final String? description,
    final String? icon,
    final double? temperature,
    final double? feelsLike,
    final double? minTemperature,
    final double? maxTemperature,
    final int? humidity,
    final double? windSpeed,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}
