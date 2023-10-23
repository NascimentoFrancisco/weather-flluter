
// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:mobx/mobx.dart';
import 'package:weather_forecast/src/models/weather_model.dart';
part 'weather.stores.g.dart';


class weatherStore = _weatherStore with _$weatherStore;

abstract class _weatherStore with Store{

  String apiUrlRoot = dotenv.get('API_ROOT_URL');
  String apiKey = dotenv.get('APi_KEY');

  @observable
  String city = "";

  @observable
  bool searching = false;

  @observable
  bool instanciConfirm = false;

  @observable
  Weather? weather;

  @observable
  String? errormessage;

  @action //Seta a cidade
  void setCity(String value){
    setSearching();
    city = value;
  } 

  @action
  void setSearching(){
    searching = !searching;
  }

  @computed //Verfica se a cidade não está vazia
  bool get isValidCity => city.isNotEmpty;

  @computed
  bool get isValidSearching => searching;

  @action
  void setinstanciConfirm(){
    instanciConfirm = !instanciConfirm;
  }

  @action
  void setErrormessage(String value){
    errormessage = value;
  }

  @computed
  String? get getErrormessage => errormessage;


  /* Metodos relacionados a classe weather */

  @action
  Future<void> setWeather() async{

    http.Response response;    
    String url = "$apiUrlRoot=$city,BR&appid=$apiKey&units=metric&lang=pt_br";
    
    if (isValidCity){
      try{
        response = await http.get(Uri.parse(url));
                
        if(response.statusCode == 200){
          weather = Weather.fromJson(jsonDecode(response.body));
          setSearching();
          setinstanciConfirm();
          errormessage = null;
        } else if (response.statusCode == 404){
          setErrormessage('Cidade não encotrada.');
          setSearching();
        }

      } on http.ClientException{
        setErrormessage('Erro de conexão.');
        setSearching();
      } on SocketException{
        setErrormessage('Erro de conexão.');
        setSearching();
      } on NoSuchMethodError{
        setErrormessage('Erro de conexão.');
        setSearching();
      }
      
    }else{
      setErrormessage('Informe uma cidade no formulário de pesquisa.');
      setSearching();
    }
  }

  @computed
  Weather? get getWeather => weather;
    
}
