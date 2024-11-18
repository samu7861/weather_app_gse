// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDtoImpl _$$ForecastDtoImplFromJson(Map<String, dynamic> json) =>
    _$ForecastDtoImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      temperature: (json['temperature'] as num?)?.toDouble(),
      minTemperature: (json['minTemperature'] as num?)?.toDouble(),
      maxTemperature: (json['maxTemperature'] as num?)?.toDouble(),
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$ForecastDtoImplToJson(_$ForecastDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('temperature', instance.temperature);
  writeNotNull('minTemperature', instance.minTemperature);
  writeNotNull('maxTemperature', instance.maxTemperature);
  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  return val;
}
