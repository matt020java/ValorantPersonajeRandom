import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personaje_random_valorant/src/models/personaje.dart';
import 'package:personaje_random_valorant/src/widgets/personajes_widget.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Personaje pje1 = Personaje.BLANCO;
  Personaje pje1Modo2 = Personaje.BLANCO;
  Personaje pje2Modo2 = Personaje.BLANCO;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Personaje Random",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.red[900],

      ),
      body: Column(
        children: [
          Personajes(
            pje1: pje1,
            pje1Modo2: pje1Modo2,
            pje2Modo2: pje2Modo2,
          ),
          //SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Personaje personaje = _generarPje();
                  setState(() {
                    pje1 = personaje;
                    pje1Modo2 = Personaje.BLANCO;
                    pje2Modo2 = Personaje.BLANCO;
                  });
                },
                child: Text("un personaje"),
                color: Colors.red[900],
              ),
              SizedBox(width: 60,),
              RaisedButton(
                onPressed: (){
                  Personaje personeje1 = _generarPje();
                  Personaje personaje2 = _generarDos(personeje1);
                  setState(() {
                    pje1 = Personaje.BLANCO;
                    pje1Modo2 = personeje1;
                    pje2Modo2 = personaje2;
                  });
                },
                child: Text("dos personajes"),
                color: Colors.red[900],
              )
            ],
          )
        ],
      ),
    );
  }

  Personaje _generarPje(){
    Random ran = new Random();
    int nro = ran.nextInt(12);
    switch (nro) {
      case 0: return new Personaje("assets/img/brimstone.png", "Brimstone");
        break;
      case 1: return new Personaje("assets/img/phoenix.png", "Phoenix");
        break;
      case 2: return new Personaje("assets/img/sage.png", "Sage");
        break;
      case 3: return new Personaje("assets/img/sova.png", "Sova");
        break;
      case 4: return new Personaje("assets/img/viper.png", "Viper");
        break;
      case 5: return new Personaje("assets/img/cypher.png", "Cypher");
        break;
      case 6: return new Personaje("assets/img/reyna.png", "Reyna");
        break;
      case 7: return new Personaje("assets/img/killjoy.png", "Killjoy");
        break;
      case 8: return new Personaje("assets/img/breach.png", "Breach");
        break;
      case 9: return new Personaje("assets/img/omen.png", "Omen");
        break;
      case 10: return new Personaje("assets/img/jett.png", "Jett");
        break;
      case 11: return new Personaje("assets/img/raze.png", "Raze");
        break;
      case 12: return new Personaje("assets/img/skye.png", "Skye");
        break;
      default: print("THERE`S A TRAUBLE");
    }
  }
  Personaje _generarDos(Personaje personaje1){
    Personaje personaje2 = _generarPje();
    while(personaje1.foto == personaje2.foto){
      personaje2 = _generarPje();
    }
    return personaje2;
  }
}