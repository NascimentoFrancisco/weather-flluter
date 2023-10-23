
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_forecast/src/pages/home_page.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  // ignore: prefer_final_fields
  TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      controller: _cityController,
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: const  Color.fromARGB(108, 98, 100, 117)/* Color.fromARGB(87, 24, 43, 124) */,
        border: const OutlineInputBorder(),
        labelText: 'Cidade',
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
          ),
        ),
        labelStyle: const TextStyle(color: Colors.white),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(2),
          child: Observer(
            builder: (_){
              return GestureDetector(
                onTap: 
                  Weatherstore.isValidSearching 
                  ? null : ()async{
                      FocusScope.of(context).requestFocus(FocusNode());
                      Weatherstore.setCity(_cityController.text);
                      await Weatherstore.setWeather();
                      // ignore: use_build_context_synchronously
                      Weatherstore.getErrormessage != null ? ScaffoldMessenger.of(context).showSnackBar(snackBar):null;
                    },
                child: Weatherstore.isValidSearching 
                  ?const CircularProgressIndicator(
                    color: Colors.white,
                  )
                  :const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 26,
                ),
              );
            },
          ),
        )
      ),
    );
  }

  var snackBar = SnackBar(
    content: Observer(builder: (_) => Text('${Weatherstore.getErrormessage}',
      style: const TextStyle(color: Colors.white),
    ),),
    backgroundColor: Colors.redAccent,
    action: SnackBarAction(
      label: 'Fechar',
      textColor: Colors.black,
      onPressed: (){},
      ),
  );
}