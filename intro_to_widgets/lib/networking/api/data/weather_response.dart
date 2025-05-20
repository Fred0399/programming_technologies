class WeatherResponse {
  final String cityName;
  final double temperature;
  final String description;

  WeatherResponse({
    required this.cityName,
    required this.temperature,
    required this.description,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      cityName: json['name'],
      temperature: (json['main']['temp'] as num).toDouble(),
      description: json['weather'][0]['description'],
    );
  }
}
