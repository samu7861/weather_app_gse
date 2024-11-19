// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDtoImpl _$$WeatherDtoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDtoImpl(
      coord: json['coord'] == null
          ? null
          : WeatherCoordDto.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherConditionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: json['main'] == null
          ? null
          : WeatherMainDto.fromJson(json['main'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : WeatherWindDto.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toInt(),
      dt: (json['dt'] as num?)?.toInt(),
      name: json['name'] as String?,
      timezone: (json['timezone'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WeatherDtoImplToJson(_$WeatherDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('coord', instance.coord);
  writeNotNull('weather', instance.weather);
  writeNotNull('main', instance.main);
  writeNotNull('wind', instance.wind);
  writeNotNull('visibility', instance.visibility);
  writeNotNull('dt', instance.dt);
  writeNotNull('name', instance.name);
  writeNotNull('timezone', instance.timezone);
  return val;
}
