
// ignore_for_file: non_constant_identifier_names

class Weather{

  String city;
  String clouds;
  String temperature;
  String temp_max;
  String temp_min;
  String humidity;
  String wind_speed;

  Weather({
    required this.city,
    required this.clouds,
    required this.humidity,
    required this.temperature,
    required this.temp_max,
    required this.temp_min,
    required this.wind_speed,
  });

  Weather.fromJson(Map<String, dynamic> json)
   :city = json['name'],
    clouds = json['weather'][0]['description'],
    humidity = json['main']['humidity'].toString(),
    temperature = json['main']['temp'].toString().replaceAll('.',','),
    temp_max = json['main']['temp_max'].toString().replaceAll('.',','),
    temp_min = json['main']['temp_min'].toString().replaceAll('.',','),
    wind_speed = (json['wind']['speed'] * 3.6).toStringAsFixed(2).replaceAll('.',',');    
  
}