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
  WeatherCoordDto? get coord => throw _privateConstructorUsedError;
  List<WeatherConditionDto>? get weather => throw _privateConstructorUsedError;
  WeatherMainDto? get main => throw _privateConstructorUsedError;
  WeatherWindDto? get wind => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  int? get dt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;

  /// Serializes this WeatherDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$WeatherDtoImpl extends _WeatherDto {
  const _$WeatherDtoImpl(
      {this.coord,
      final List<WeatherConditionDto>? weather,
      this.main,
      this.wind,
      this.visibility,
      this.dt,
      this.name,
      this.timezone})
      : _weather = weather,
        super._();

  factory _$WeatherDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$WeatherDtoImplFromJson(
        json,
      );

  @override
  final WeatherCoordDto? coord;
  final List<WeatherConditionDto>? _weather;
  @override
  List<WeatherConditionDto>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WeatherMainDto? main;
  @override
  final WeatherWindDto? wind;
  @override
  final int? visibility;
  @override
  final int? dt;
  @override
  final String? name;
  @override
  final int? timezone;

  @override
  String toString() {
    return 'WeatherDto(coord: $coord, weather: $weather, main: $main, wind: $wind, visibility: $visibility, dt: $dt, name: $name, timezone: $timezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDtoImpl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coord,
      const DeepCollectionEquality().hash(_weather),
      main,
      wind,
      visibility,
      dt,
      name,
      timezone);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherDto extends WeatherDto {
  const factory _WeatherDto(
      {final WeatherCoordDto? coord,
      final List<WeatherConditionDto>? weather,
      final WeatherMainDto? main,
      final WeatherWindDto? wind,
      final int? visibility,
      final int? dt,
      final String? name,
      final int? timezone}) = _$WeatherDtoImpl;
  const _WeatherDto._() : super._();

  factory _WeatherDto.fromJson(
    Map<String, dynamic> json,
  ) = _$WeatherDtoImpl.fromJson;

  @override
  WeatherCoordDto? get coord;
  @override
  List<WeatherConditionDto>? get weather;
  @override
  WeatherMainDto? get main;
  @override
  WeatherWindDto? get wind;
  @override
  int? get visibility;
  @override
  int? get dt;
  @override
  String? get name;
  @override
  int? get timezone;
}
