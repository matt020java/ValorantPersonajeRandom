import 'package:flutter/material.dart';
import 'package:personaje_random_valorant/src/models/personaje.dart';

class Personajes extends StatelessWidget {
  final Personaje pje1;
  final Personaje pje1Modo2;
  final Personaje pje2Modo2;
  
  Personajes({@required this.pje1, @required this.pje1Modo2, @required this.pje2Modo2});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    return Center(
      heightFactor: 2,
      child: Row(
        children: [
          Container(
            width: tamano.width*0.332,
            
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                child: Column(
                  children: [
                    Image(image: AssetImage(pje1Modo2.foto)),
                    Text(pje1Modo2.nombre)
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: tamano.width*0.332,
            
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                child: Column(
                  children: [
                    Image(image: AssetImage(pje1.foto)),
                    Text(pje1.nombre)
                  ],
                )
              ),
            ),
          ),
          Container(
            width: tamano.width*0.332,

            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                child: Column(
                  children: [
                    Image(image: AssetImage(pje2Modo2.foto)),
                    Text(pje2Modo2.nombre)
                  ],
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}