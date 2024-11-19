// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_condition_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherConditionDtoImpl _$$WeatherConditionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherConditionDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$WeatherConditionDtoImplToJson(
    _$WeatherConditionDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('main', instance.main);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  return val;
}
