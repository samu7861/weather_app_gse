// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_coord_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherCoordDto _$WeatherCoordDtoFromJson(
  Map<String, dynamic> json,
) {
  return _WeatherCoordDto.fromJson(
    json,
  );
}

/// @nodoc
mixin _$WeatherCoordDto {
  double? get lon => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;

  /// Serializes this WeatherCoordDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$WeatherCoordDtoImpl extends _WeatherCoordDto {
  const _$WeatherCoordDtoImpl({this.lon, this.lat}) : super._();

  factory _$WeatherCoordDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$WeatherCoordDtoImplFromJson(
        json,
      );

  @override
  final double? lon;
  @override
  final double? lat;

  @override
  String toString() {
    return 'WeatherCoordDto(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherCoordDtoImpl &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherCoordDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherCoordDto extends WeatherCoordDto {
  const factory _WeatherCoordDto({final double? lon, final double? lat}) =
      _$WeatherCoordDtoImpl;
  const _WeatherCoordDto._() : super._();

  factory _WeatherCoordDto.fromJson(
    Map<String, dynamic> json,
  ) = _$WeatherCoordDtoImpl.fromJson;

  @override
  double? get lon;
  @override
  double? get lat;
}
