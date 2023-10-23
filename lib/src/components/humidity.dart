
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_forecast/src/pages/home_page.dart';

class Humidity extends StatefulWidget {
  const Humidity({super.key});

  @override
  State<Humidity> createState() => _HumidityState();
}

class _HumidityState extends State<Humidity> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color.fromARGB(166, 6, 10, 39)/* Color.fromARGB(255, 7, 96, 168) */
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              const Icon(Icons.water_drop_rounded, color: Color.fromARGB(255, 56, 152, 231),),
              Observer(
                builder: (_){
                  return 
                    Text(Weatherstore.getWeather?.humidity != null
                    ?'Umidade ${Weatherstore.getWeather?.humidity}%'
                    :'Sem dados',
                      style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    )
                  ); 
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}