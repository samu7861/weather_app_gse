import 'package:weather_app_gse/module/home/data/dto/weather/weather_dto.dart';

abstract class IHomeDatasource {
  Future<WeatherDto> getWeather(double latitude, double longitude);
}