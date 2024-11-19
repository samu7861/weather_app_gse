// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_main_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherMainDto _$WeatherMainDtoFromJson(
  Map<String, dynamic> json,
) {
  return _WeatherMainDto.fromJson(
    json,
  );
}

/// @nodoc
mixin _$WeatherMainDto {
  double? get temp => throw _privateConstructorUsedError;
  double? get feelsLike => throw _privateConstructorUsedError;
  double? get tempMin => throw _privateConstructorUsedError;
  double? get tempMax => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get seaLevel => throw _privateConstructorUsedError;
  int? get grndLevel => throw _privateConstructorUsedError;

  /// Serializes this WeatherMainDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$WeatherMainDtoImpl extends _WeatherMainDto {
  const _$WeatherMainDtoImpl(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity,
      this.seaLevel,
      this.grndLevel})
      : super._();

  factory _$WeatherMainDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$WeatherMainDtoImplFromJson(
        json,
      );

  @override
  final double? temp;
  @override
  final double? feelsLike;
  @override
  final double? tempMin;
  @override
  final double? tempMax;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  final int? seaLevel;
  @override
  final int? grndLevel;

  @override
  String toString() {
    return 'WeatherMainDto(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, seaLevel: $seaLevel, grndLevel: $grndLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherMainDtoImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.seaLevel, seaLevel) ||
                other.seaLevel == seaLevel) &&
            (identical(other.grndLevel, grndLevel) ||
                other.grndLevel == grndLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, tempMin,
      tempMax, pressure, humidity, seaLevel, grndLevel);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherMainDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherMainDto extends WeatherMainDto {
  const factory _WeatherMainDto(
      {final double? temp,
      final double? feelsLike,
      final double? tempMin,
      final double? tempMax,
      final int? pressure,
      final int? humidity,
      final int? seaLevel,
      final int? grndLevel}) = _$WeatherMainDtoImpl;
  const _WeatherMainDto._() : super._();

  factory _WeatherMainDto.fromJson(
    Map<String, dynamic> json,
  ) = _$WeatherMainDtoImpl.fromJson;

  @override
  double? get temp;
  @override
  double? get feelsLike;
  @override
  double? get tempMin;
  @override
  double? get tempMax;
  @override
  int? get pressure;
  @override
  int? get humidity;
  @override
  int? get seaLevel;
  @override
  int? get grndLevel;
}
