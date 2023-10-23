
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_forecast/src/components/humidity.dart';
import 'package:weather_forecast/src/components/search.dart';
import 'package:weather_forecast/src/components/temperature.dart';
import 'package:weather_forecast/src/components/wind_speed.dart';

import 'package:weather_forecast/src/stores/weather.stores.dart';

final Weatherstore = weatherStore();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(
          "Previsão do tempo",
          style: TextStyle(fontSize: 20),
        ),
      ), */
      backgroundColor: const Color.fromARGB(240, 33, 149, 243),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromARGB(255, 7, 96, 168)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 25,),
                            Observer(
                              builder: (_){
                                return Text(Weatherstore.getWeather?.city != null?'${Weatherstore.getWeather?.city}'
                                :'Pesquise por uma cidade',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                  ),
                                );
                              }
                            ),
                            const SizedBox(height: 40,),
                            Center(
                              child: Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color.fromARGB(166, 6, 10, 39)
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.thermostat,color: Color.fromARGB(255, 56, 152, 231),),
                                    Observer(
                                      builder: (_){
                                        return Text(Weatherstore.getWeather?.temperature != null?'${Weatherstore.getWeather?.temperature} °C'
                                          :'Sem dados',
                                          style: const TextStyle(color: Colors.white, fontSize: 16),
                                        ); 
                                      }
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 4,),
                            Container(
                              width: 200,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color.fromARGB(166, 6, 10, 39)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.sunny_snowing, color: Colors.yellowAccent,),
                                    const SizedBox(width: 4,),
                                    Observer(
                                      builder: (_) {
                                        return Text(Weatherstore.getWeather?.clouds != null?'${Weatherstore.getWeather?.clouds}'
                                          :'Sem dados',
                                          style: const TextStyle(color: Colors.white, fontSize: 16),
                                        );
                                      }
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  const Search(),
                  const SizedBox(height: 40,),
                  const Temperature(),
                  const SizedBox(height: 20,),
                  const Humidity(),
                  const SizedBox(height: 20,),
                  const WindSpeed(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}