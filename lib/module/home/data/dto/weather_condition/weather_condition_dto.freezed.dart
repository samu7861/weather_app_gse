// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_condition_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherConditionDto _$WeatherConditionDtoFromJson(
  Map<String, dynamic> json,
) {
  return _WeatherConditionDto.fromJson(
    json,
  );
}

/// @nodoc
mixin _$WeatherConditionDto {
  int? get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherConditionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$WeatherConditionDtoImpl extends _WeatherConditionDto {
  const _$WeatherConditionDtoImpl(
      {this.id, this.main, this.description, this.icon})
      : super._();

  factory _$WeatherConditionDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$WeatherConditionDtoImplFromJson(
        json,
      );

  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'WeatherConditionDto(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherConditionDto extends WeatherConditionDto {
  const factory _WeatherConditionDto(
      {final int? id,
      final String? main,
      final String? description,
      final String? icon}) = _$WeatherConditionDtoImpl;
  const _WeatherConditionDto._() : super._();

  factory _WeatherConditionDto.fromJson(
    Map<String, dynamic> json,
  ) = _$WeatherConditionDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get main;
  @override
  String? get description;
  @override
  String? get icon;
}
