import 'package:weather_application/data/data_source/remote_data_soucre.dart';
import 'package:weather_application/domain/entities/weather.dart';
import 'package:weather_application/domain/repository/weather_repository.dart';

class WeatherRepository extends WeatherBaseRepository
{
  final RemoteBaseDateSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName)async {
     return( await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }

}
