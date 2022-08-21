import 'package:weather_application/domain/entities/weather.dart';

class WeatherModel extends Weather
{
  WeatherModel(int id, int pressure, String cityName, String description, String main) : super(id, pressure, cityName, description, main);


  factory WeatherModel.fromJson(Map<String, dynamic> json)=>
      WeatherModel(
        json["id"],
        json["name"],
        json["weather"][0]["main"],
        json["weather"][0]["description"],
        json["main"]["pressure"],


      );

}