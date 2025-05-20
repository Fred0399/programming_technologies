import 'package:flutter/material.dart';
import 'package:intro_to_widgets/networking/api/data/weather_response.dart';
import 'package:intro_to_widgets/networking/api/rest_example.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  WeatherResponse? response;

  Future<void> getWeather() async {
    final resp = await fetchWeather();
    response = resp;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () {
        getWeather();
        }, child: Text('Get weather')),
        if (response != null) Text(response?.cityName ?? 'NO CITY'),
      ],
    );
  }
}
