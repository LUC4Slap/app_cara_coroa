import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("images/moeda_cara.png");
  @override
  Widget build(BuildContext context) {
    List opcoes = ['cara', 'coroa'];
    int numero = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numero];

    switch (escolhaApp) {
      case "cara":
        setState(() {
          _imagemApp = AssetImage("imagens/moeda_cara.png");
        });
        break;
      case "coroa":
        setState(() {
          _imagemApp = AssetImage("imagens/moeda_coroa.png");
        });
        break;
    }

    return Scaffold(
      body: Container(
        color: Color.fromARGB(193, 26, 196, 114),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(image: this._imagemApp),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
