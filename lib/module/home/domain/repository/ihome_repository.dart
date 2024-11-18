import 'package:weather_app_gse/module/home/domain/entity/weather_entity.dart';

abstract class IHomeRepository {
  Future<WeatherEntity> getWeather(double latitude, double longitude);
}