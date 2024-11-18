// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationDto _$LocationDtoFromJson(
  Map<String, dynamic> json,
) {
  return _LocationDto.fromJson(
    json,
  );
}

/// @nodoc
mixin _$LocationDto {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;

  /// Serializes this LocationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$LocationDtoImpl extends _LocationDto {
  const _$LocationDtoImpl({this.lat, this.lon, this.cityName, this.countryCode})
      : super._();

  factory _$LocationDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$LocationDtoImplFromJson(
        json,
      );

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? cityName;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'LocationDto(lat: $lat, lon: $lon, cityName: $cityName, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDtoImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, cityName, countryCode);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDtoImplToJson(
      this,
    );
  }
}

abstract class _LocationDto extends LocationDto {
  const factory _LocationDto(
      {final double? lat,
      final double? lon,
      final String? cityName,
      final String? countryCode}) = _$LocationDtoImpl;
  const _LocationDto._() : super._();

  factory _LocationDto.fromJson(
    Map<String, dynamic> json,
  ) = _$LocationDtoImpl.fromJson;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String? get cityName;
  @override
  String? get countryCode;
}
