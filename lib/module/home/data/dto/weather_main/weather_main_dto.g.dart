// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherMainDtoImpl _$$WeatherMainDtoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherMainDtoImpl(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feelsLike'] as num?)?.toDouble(),
      tempMin: (json['tempMin'] as num?)?.toDouble(),
      tempMax: (json['tempMax'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toInt(),
      humidity: (json['humidity'] as num?)?.toInt(),
      seaLevel: (json['seaLevel'] as num?)?.toInt(),
      grndLevel: (json['grndLevel'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WeatherMainDtoImplToJson(
    _$WeatherMainDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('temp', instance.temp);
  writeNotNull('feelsLike', instance.feelsLike);
  writeNotNull('tempMin', instance.tempMin);
  writeNotNull('tempMax', instance.tempMax);
  writeNotNull('pressure', instance.pressure);
  writeNotNull('humidity', instance.humidity);
  writeNotNull('seaLevel', instance.seaLevel);
  writeNotNull('grndLevel', instance.grndLevel);
  return val;
}
