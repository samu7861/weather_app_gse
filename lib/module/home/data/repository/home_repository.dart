import 'package:injectable/injectable.dart';
import 'package:weather_app_gse/module/home/domain/entity/weather_entity.dart';
import 'package:weather_app_gse/module/home/domain/repository/ihome_repository.dart';

import '../../domain/datasource/ihome_datasource.dart';
import '../mapper/weather_mapper.dart';

@Injectable(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  final IHomeDatasource _datasource;

  HomeRepository({required IHomeDatasource datasource})
      : _datasource = datasource;

  @override
  Future<WeatherEntity> getWeather(double latitude, double longitude) async {
    try {
      final weatherData = await _datasource.getWeather(latitude, longitude);
      return WeatherMapper.toEntity(weatherData);
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
