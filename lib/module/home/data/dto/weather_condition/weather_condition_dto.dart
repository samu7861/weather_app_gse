// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_condition_dto.g.dart';
part 'weather_condition_dto.freezed.dart';

@Freezed(
  copyWith: false, genericArgumentFactories: true,
)
class WeatherConditionDto   with _$WeatherConditionDto  {
  const WeatherConditionDto  ._();

  @JsonSerializable(
    includeIfNull: false,
  )
  const factory WeatherConditionDto  ({
    final int? id,
    final String? main,
    final String? description,
    final String? icon,
  }) = _WeatherConditionDto  ;

  factory WeatherConditionDto .fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionDtoFromJson(json);
}
