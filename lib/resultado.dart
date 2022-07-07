// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if(pontuacao < 16){
      return 'Parabéns';      
    }
    else if (pontuacao > 15 && pontuacao < 18){
      return 'Muito bom';
    }
    else {
      return 'Incrível';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
        ),
       TextButton(
        onPressed: reiniciarQuestionario,
        style: TextButton.styleFrom(
          primary: Colors.blue,
          backgroundColor: Colors.transparent
        ), 
        child: const Text(
          'Reiniciar',
          style: TextStyle(
            fontSize: 19
          ),
          ),
        ),
      ],
    );
  }
}
