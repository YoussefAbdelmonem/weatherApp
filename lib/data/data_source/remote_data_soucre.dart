import 'dart:convert';

import 'package:weather_application/core/utiles/constant.dart';
import 'package:weather_application/data/models/weather_model.dart';
import 'package:dio/dio.dart';


abstract class RemoteBaseDateSource
{
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteDataSource extends RemoteBaseDateSource
{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName)async {

    try {
      var response = await Dio().get("${AppConstant.baseUrl}/weather?q=$cityName&appid=${AppConstant.apiKey}");
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);

      return null;
    }
  }

}