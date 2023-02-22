import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  String resultado;
  Jogo(this.resultado, {super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp;
  @override
  Widget build(BuildContext context) {
    switch (widget.resultado) {
      case "cara":
        setState(() {
          _imagemApp = "imagens/moeda_cara.png";
        });
        break;
      case "coroa":
        setState(() {
          _imagemApp = "imagens/moeda_coroa.png";
        });
        break;
    }

    void _voltar() {
      Navigator.pop(context);
    }

    return Scaffold(
      body: Container(
        color: const Color(0xff61bd86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(this._imagemApp),
            GestureDetector(
              onTap: _voltar,
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
