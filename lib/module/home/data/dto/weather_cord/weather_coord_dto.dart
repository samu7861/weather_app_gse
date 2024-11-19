// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_coord_dto.g.dart';
part 'weather_coord_dto.freezed.dart';

@Freezed(
  copyWith: false,
  genericArgumentFactories: true,
)
class WeatherCoordDto with _$WeatherCoordDto {
  const WeatherCoordDto._();

  @JsonSerializable(
    includeIfNull: false,
  )
  const factory WeatherCoordDto({
    final double? lon,
    final double? lat,
  }) = _WeatherCoordDto;

  factory WeatherCoordDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherCoordDtoFromJson(json);
}
