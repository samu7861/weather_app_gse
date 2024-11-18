// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastDto _$ForecastDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ForecastDto.fromJson(
    json,
  );
}

/// @nodoc
mixin _$ForecastDto {
  DateTime? get date => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;
  double? get minTemperature => throw _privateConstructorUsedError;
  double? get maxTemperature => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this ForecastDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ForecastDtoImpl extends _ForecastDto {
  const _$ForecastDtoImpl(
      {this.date,
      this.temperature,
      this.minTemperature,
      this.maxTemperature,
      this.description,
      this.icon})
      : super._();

  factory _$ForecastDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$ForecastDtoImplFromJson(
        json,
      );

  @override
  final DateTime? date;
  @override
  final double? temperature;
  @override
  final double? minTemperature;
  @override
  final double? maxTemperature;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'ForecastDto(date: $date, temperature: $temperature, minTemperature: $minTemperature, maxTemperature: $maxTemperature, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, temperature,
      minTemperature, maxTemperature, description, icon);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDtoImplToJson(
      this,
    );
  }
}

abstract class _ForecastDto extends ForecastDto {
  const factory _ForecastDto(
      {final DateTime? date,
      final double? temperature,
      final double? minTemperature,
      final double? maxTemperature,
      final String? description,
      final String? icon}) = _$ForecastDtoImpl;
  const _ForecastDto._() : super._();

  factory _ForecastDto.fromJson(
    Map<String, dynamic> json,
  ) = _$ForecastDtoImpl.fromJson;

  @override
  DateTime? get date;
  @override
  double? get temperature;
  @override
  double? get minTemperature;
  @override
  double? get maxTemperature;
  @override
  String? get description;
  @override
  String? get icon;
}
