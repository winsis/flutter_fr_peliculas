import 'package:flutter/material.dart';
import 'package:flutter_peliculas/src/widgets/card_swiper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
    return CardSwiper(peliculas: [1,2,6,7,9],);
  }
}


