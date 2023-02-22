import 'package:flutter/material.dart';
import 'dart:math';
import 'jogo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void navegar() {
    List opcoes = ['cara', 'coroa'];
    int numero = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numero];
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Jogo(escolhaApp)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff61bd86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('imagens/logo.png'),
            GestureDetector(
              onTap: navegar,
              child: Image.asset("imagens/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
