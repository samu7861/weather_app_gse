// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_main_dto.g.dart';
part 'weather_main_dto.freezed.dart';

@Freezed(
  copyWith: false,
  genericArgumentFactories: true,
)
class WeatherMainDto with _$WeatherMainDto {
  const WeatherMainDto._();

  @JsonSerializable(
    includeIfNull: false,
  )
  const factory WeatherMainDto({
    final double? temp,
    final double? feelsLike,
    final double? tempMin,
    final double? tempMax,
    final int? pressure,
    final int? humidity,
    final int? seaLevel,
    final int? grndLevel,
  }) = _WeatherMainDto;

  factory WeatherMainDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainDtoFromJson(json);
}
