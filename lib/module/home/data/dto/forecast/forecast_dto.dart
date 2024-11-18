// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_dto.g.dart';
part 'forecast_dto.freezed.dart';

@Freezed(
  copyWith: false, genericArgumentFactories: true,
)
class ForecastDto with _$ForecastDto {
  const ForecastDto._();

  @JsonSerializable(
    includeIfNull: false,
  )
  const factory ForecastDto({
    final DateTime? date,
    final double? temperature,
    final double? minTemperature,
    final double? maxTemperature,
    final String? description,
    final String? icon,
  }) = _ForecastDto;

  factory ForecastDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastDtoFromJson(json);
}
