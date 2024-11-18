abstract class IHomeDatasource {
  Future<Map<String, dynamic>> getWeather(double latitude, double longitude);
}