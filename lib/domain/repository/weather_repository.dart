import 'package:weather_application/domain/entities/weather.dart';

abstract class WeatherBaseRepository
{
 Future<Weather> getWeatherByCityName(String countryName);
}