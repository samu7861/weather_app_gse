import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_gse/config/constants/environment.dart';
import 'package:weather_app_gse/module/home/data/dto/weather/weather_dto.dart';

import '../../domain/datasource/ihome_datasource.dart';

@Injectable(as: IHomeDatasource)
class HomeDatasource implements IHomeDatasource {
  @override
  Future<WeatherDto> getWeather(double latitude, double longitude) async {
    try {
      final response = await Dio().get(
        'https://api.openweathermap.org/data/2.5/weather',
        queryParameters: {
          'lat': latitude,
          'lon': longitude,
          'appid': EnvironmentKey.keyApi,
          'units': 'metric'
        },
      );

      if (response.statusCode == 200) {
        return WeatherDto.fromJson(response.data);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Failed to load weather data: $e');
    }
  }
}
