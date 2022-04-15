import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_peliculas/src/models/pelicula_model.dart';
import 'package:http/http.dart' as http;

class PeliculasProvider {
  final String _apikey = '1e518cec4891c6175b7a054c40030328';
  final String _url = 'api.themoviedb.org';
  final String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async{
    final url = Uri.https(_url, '3/movie/now_playing',{
      'api_key': _apikey,
      'language': _language
    });
    
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    //print(decodedData['results']);
    final peliculas = Peliculas.fromJsonList(decodedData['results']);
    //print(peliculas.items[1].title);

    return peliculas.items;

  }
}