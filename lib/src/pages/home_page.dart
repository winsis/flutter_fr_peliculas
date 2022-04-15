import 'package:flutter/material.dart';
import 'package:flutter_peliculas/src/providers/peliculas_privider.dart';
import 'package:flutter_peliculas/src/widgets/card_swiper.dart';

import '../models/pelicula_model.dart';

class HomePage extends StatelessWidget {
  //HomePage({Key? key}) : super(key: key);

  final peliculasProvider = PeliculasProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Películas en cines '),
        backgroundColor: Colors.indigoAccent,
        actions:<Widget> [
          IconButton(onPressed: (){},
              icon: Icon(Icons.search))
        ],
      ),
      body: Container(
        child: Column(
          children:<Widget> [_swiperTarjetas()],)
      )
    );
  }
  Widget _swiperTarjetas(){

    return FutureBuilder(
        future: peliculasProvider.getEnCines(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return CardSwiper(peliculas: List<Pelicula>.from( snapshot.data!));
          } else {
            return Container(
              height: 400.0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}


