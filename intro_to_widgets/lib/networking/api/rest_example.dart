import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io'; // For SocketException
import 'dart:async';

import 'package:intro_to_widgets/networking/api/data/weather_response.dart'; // For TimeoutException

Future<WeatherResponse?> fetchWeather() async {
  final String url = 'https://api.openweathermap.org/data/2.5/weather?q=Baku&appid=bcd596fd6ff895187a97104847ac1906';

  try {
    final response = await http
        .get(Uri.parse(url))
        .timeout(const Duration(seconds: 10));

    print('RESPOSNE');
    debugPrint('RESP: ${response.body.toString()}');

    switch (response.statusCode) {
      case 200:
        final data = jsonDecode(response.body);
        return WeatherResponse.fromJson(data);

      case 401:
        print('Error 401: Unauthorized. Check your API key.');
        break;

      case 404:
        print('Error 404: City not found.');
        break;

      case 500:
        print('Error 500: Server error.');
        break;

      default:
        print('Unexpected Error: ${response.statusCode}');
    }
  } on SocketException {
    print('No Internet connection.');
  } on TimeoutException {
    print('Request timed out.');
  } catch (e) {
    print('Unexpected error: $e');
  } finally{
    //
  }

  return null;
}
