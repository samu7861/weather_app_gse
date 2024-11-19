import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_gse/config/constants/environment.dart';
import 'package:weather_app_gse/module/home/data/dto/weather/weather_dto.dart';

import '../../domain/datasource/ihome_datasource.dart';

// @Injectable(as: IHomeDatasource)
// class HomeDatasource implements IHomeDatasource {
//   @override
//   Future<WeatherDto> getWeather(double latitude, double longitude) async {
//     try {
//       // Crear los parámetros de consulta
//       final queryParameters = {
//         'lat': latitude,
//         'lon': longitude,
//         'appid': "bf2280ebef7e1a12136929a87bbd4d2b",
//         'units': 'metric', // Asegura que los datos estén en sistema métrico
//       };

//       // Crear la URL
//       final uri = Uri.https(
//         'api.openweathermap.org',
//         '/data/2.5/weather',
//         queryParameters,
//       );

//       // Imprimir la URL generada
//       debugPrint('Requesting URL: $uri');

//       // Llamado a la API
//       final response = await Dio().getUri(uri);

//       // Verificar el estado de la respuesta
//       if (response.statusCode == 200) {
//         return WeatherDto.fromJson(response.data);
//       } else {
//         throw Exception('Failed to load weather data: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Failed to load weather data: $e');
//     }
//   }
// }


// @Injectable(as: IHomeDatasource)
// class HomeDatasource implements IHomeDatasource {
//   @override
//   Future<WeatherDto> getWeather(double latitude, double longitude) async {
//     try {
//       final response = await Dio().get(
//         'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=bf2280ebef7e1a12136929a87bbd4d2b&units=metric',
//       );
//       return WeatherDto.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to load weather data: $e');
//     }
//   }
// }


@Injectable(as: IHomeDatasource)
class HomeDatasource implements IHomeDatasource {

  static const _baseUrl = 'api.openweathermap.org';
  static const _path = '/data/2.5/weather';

  @override
  Future<WeatherDto> getWeather(double latitude, double longitude) async {
    try {
      // Construir la URL con parámetros de consulta
      final uri = Uri.https(
        _baseUrl,
        _path,
        {
          'lat': latitude.toString(),
          'lon': longitude.toString(),
          'appid': EnvironmentKey.keyApi,
          'units': 'metric',
          'lang': 'es',
        },
      );

      // Imprimir la URL para depuración
      debugPrint('Requesting URL: $uri');

      // Llamado a la API
      final response = await Dio().getUri(uri);

      // Validar respuesta
      if (response.statusCode == 200) {
        return WeatherDto.fromJson(response.data);
      } else {
        throw Exception('Failed with status code: ${response.statusCode}');
      }
    } on DioException catch (dioError) {
      throw Exception('Network error: ${dioError.message}');
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }
}

