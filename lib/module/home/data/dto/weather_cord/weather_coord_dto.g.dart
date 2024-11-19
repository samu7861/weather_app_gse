// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_coord_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherCoordDtoImpl _$$WeatherCoordDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherCoordDtoImpl(
      lon: (json['lon'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeatherCoordDtoImplToJson(
    _$WeatherCoordDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lon', instance.lon);
  writeNotNull('lat', instance.lat);
  return val;
}
