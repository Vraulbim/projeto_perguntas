// ignore_for_file: avoid_print, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
      {
        'pergunta': 'Qual é sua linguaguem favorita?',
        'respostas': [
          'C#', 
          'JavaScript', 
          'Dart', 
          'Java'
          ]
      },
      {
        'pergunta': 'Qual seu framework favorito?',
        'respostas': [
          'Asp.Net Core',
          'Asp.Net MVC',
          'Flutter',
          'Ionic'
          ]
      },
      {
        'pergunta': 'Qual sua IDE favorita?',
        'respostas': [
          'IntelliJ IDEA',
          'VSCode',
          'Visual Studio',
          'Android Studio'
        ]
      }
    ];  

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void responder() {
    if(temPerguntaSelecionada){
      setState(() {
      _perguntaSelecionada++;
    });
    }
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
          body: temPerguntaSelecionada ? Questionario(
            perguntas: _perguntas, 
            perguntaSelecionada: _perguntaSelecionada, 
            responder: responder) : const Resultado()
          ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

// class PerguntaApp extends StatelessWidget {
//   static final perguntas = [
//     'Qual sua cor favorita?',
//     'Qual seu animal favorito?'
//   ];    
//   //var perguntaSelecionada = 0;

//   responder() {
//     //perguntaSelecionada++;
//     print('Respondeu');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //Desabilita a flag de debug
//       debugShowCheckedModeBanner: false,
//       darkTheme: ThemeData.dark(),
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Projeto Perguntas'),
//           ),
//           body: Column(
//             children: <Widget>[
//               //const SizedBox(height: 5), outra alternativa para espaçamento
//               Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: Text(perguntas.elementAt(0)),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: ElevatedButton(
//                     onPressed: responder, child: const Text('Resposta 1')),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: ElevatedButton(
//                     onPressed: responder, child: const Text('Resposta 2')),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: ElevatedButton(
//                     onPressed: responder, child: const Text('Resposta 3')),
//               )              
//             ],
//           )),
//     );
//   }
// }
