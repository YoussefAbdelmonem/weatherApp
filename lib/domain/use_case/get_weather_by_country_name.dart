import 'package:weather_application/domain/entities/weather.dart';
import 'package:weather_application/domain/repository/weather_repository.dart';

class GetWeatherByCountryName
{
  final WeatherBaseRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String countryName)async
  {
    return await repository.getWeatherByCityName(countryName);
  }

}