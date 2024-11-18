// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherDto _$WeatherDtoFromJson(
  Map<String, dynamic> json,
) {
  return _WeatherDto.fromJson(
    json,
  );
}

/// @nodoc
mixin _$WeatherDto {
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;
  double? get feelsLike => throw _privateConstructorUsedError;
  double? get minTemperature => throw _privateConstructorUsedError;
  double? get maxTemperature => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  double? get windSpeed => throw _privateConstructorUsedError;

  /// Serializes this WeatherDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$WeatherDtoImpl extends _WeatherDto {
  const _$WeatherDtoImpl(
      {this.description,
      this.icon,
      this.temperature,
      this.feelsLike,
      this.minTemperature,
      this.maxTemperature,
      this.humidity,
      this.windSpeed})
      : super._();

  factory _$WeatherDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$WeatherDtoImplFromJson(
        json,
      );

  @override
  final String? description;
  @override
  final String? icon;
  @override
  final double? temperature;
  @override
  final double? feelsLike;
  @override
  final double? minTemperature;
  @override
  final double? maxTemperature;
  @override
  final int? humidity;
  @override
  final double? windSpeed;

  @override
  String toString() {
    return 'WeatherDto(description: $description, icon: $icon, temperature: $temperature, feelsLike: $feelsLike, minTemperature: $minTemperature, maxTemperature: $maxTemperature, humidity: $humidity, windSpeed: $windSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDtoImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, icon, temperature,
      feelsLike, minTemperature, maxTemperature, humidity, windSpeed);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherDto extends WeatherDto {
  const factory _WeatherDto(
      {final String? description,
      final String? icon,
      final double? temperature,
      final double? feelsLike,
      final double? minTemperature,
      final double? maxTemperature,
      final int? humidity,
      final double? windSpeed}) = _$WeatherDtoImpl;
  const _WeatherDto._() : super._();

  factory _WeatherDto.fromJson(
    Map<String, dynamic> json,
  ) = _$WeatherDtoImpl.fromJson;

  @override
  String? get description;
  @override
  String? get icon;
  @override
  double? get temperature;
  @override
  double? get feelsLike;
  @override
  double? get minTemperature;
  @override
  double? get maxTemperature;
  @override
  int? get humidity;
  @override
  double? get windSpeed;
}
