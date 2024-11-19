// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_wind_dto.g.dart';
part 'weather_wind_dto.freezed.dart';

@Freezed(
  copyWith: false,
  genericArgumentFactories: true,
)
class WeatherWindDto with _$WeatherWindDto {
  const WeatherWindDto._();

  @JsonSerializable(
    includeIfNull: false,
  )
  const factory WeatherWindDto({
   final double? speed,
    final int? deg,
    final double? gust,
  }) = _WeatherWindDto;

  factory WeatherWindDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherWindDtoFromJson(json);
}
