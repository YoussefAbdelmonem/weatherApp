import 'package:flutter/material.dart';
import 'package:weather_application/data/data_source/remote_data_soucre.dart';
import 'package:weather_application/data/repositoty/weather_data_repository.dart';
import 'package:weather_application/domain/repository/weather_repository.dart';
import 'package:weather_application/domain/use_case/get_weather_by_country_name.dart';

void main()async {
  RemoteBaseDateSource remoteBaseDateSource =RemoteDataSource();
  WeatherBaseRepository weatherBaseRepository =WeatherRepository(remoteBaseDateSource);
  await GetWeatherByCountryName(weatherBaseRepository).execute("Egypt");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Center(
        child: Text('Clean Architecture',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
    );
  }
}


