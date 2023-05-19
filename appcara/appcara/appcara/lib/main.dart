import 'dart:math';

import 'package:appcara/resultado.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    home: CaraCoroa(),
    debugShowCheckedModeBanner: false)
  );
}

class CaraCoroa extends StatefulWidget {
  const CaraCoroa({super.key});

  @override
  State<CaraCoroa> createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {

  void exibirResultado(){
    var itens = ['cara', 'coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];
    Navigator.push(
      context, MaterialPageRoute(builder: (context)=> Resultado(resultado)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(226, 60, 150, 68),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget> [
            Image.asset("imagens/logo.png"), 
            GestureDetector( // transformar a imagem em um botão
              child: Image.asset("imagens/botao_jogar.png"),
              onTap: exibirResultado
            )
          ],

        ),
      ),
    );
  }
}
