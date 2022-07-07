// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget {
  static final perguntas = [
    'Qual sua cor favorita?',
    'Qual seu animal favorito?'
  ];
  const PerguntaApp({Key? key}) : super(key: key);

  responder() {
    print('Respondeu');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Desabilita a flag de debug
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Projeto Perguntas'),
          ),
          body: Column(
            children: <Widget>[
              //const SizedBox(height: 5), outra alternativa para espaçamento
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(perguntas.elementAt(0)),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                    onPressed: responder, child: const Text('Resposta 1')),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                    onPressed: responder, child: const Text('Resposta 2')),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                    onPressed: responder, child: const Text('Resposta 3')),
              )
            ],
          )),
    );
  }
}
