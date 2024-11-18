// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.g.dart';
part 'location_dto.freezed.dart';

@Freezed(
  copyWith: false, genericArgumentFactories: true,
)
class LocationDto with _$LocationDto {
  const LocationDto._();

  @JsonSerializable(
    includeIfNull: false,
  )
  const factory LocationDto({
    final double? lat,
    final double? lon,
    final String? cityName,
    final String? countryCode,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}
