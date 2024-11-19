// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_wind_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherWindDtoImpl _$$WeatherWindDtoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherWindDtoImpl(
      speed: (json['speed'] as num?)?.toDouble(),
      deg: (json['deg'] as num?)?.toInt(),
      gust: (json['gust'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeatherWindDtoImplToJson(
    _$WeatherWindDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('speed', instance.speed);
  writeNotNull('deg', instance.deg);
  writeNotNull('gust', instance.gust);
  return val;
}
