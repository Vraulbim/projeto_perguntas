// ignore_for_file: avoid_print, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
      {
        'pergunta': 'Qual é sua linguaguem favorita?',
        'respostas': [
          {'texto': 'C#', 'nota': 10}, 
          {'texto': 'JavaScript', 'nota': 0}, 
          {'texto': 'Dart', 'nota': 9},          
          {'texto': 'Java', 'nota': 8}
          ]
      },
      {
        'pergunta': 'Qual seu framework favorito?',
        'respostas': [
          {'texto': 'Asp.Net Core', 'nota': 10},
          {'texto': 'Asp.Net MVC', 'nota': 7},
          {'texto': 'Flutter', 'nota': 10},
          {'texto': 'Ionic', 'nota': 8}
          ]
      },
      {
        'pergunta': 'Qual sua IDE favorita?',
        'respostas': [
          {'texto': 'IntelliJ IDEA', 'nota': 10},
          {'texto': 'VSCode', 'nota': 10},
          {'texto': 'Android Studio', 'nota': 6},
          {'texto': 'Bloco de Notas', 'nota': 4}          
        ]
      }
    ];  

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void responder(int nota) {
    if(temPerguntaSelecionada){
      setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += nota;
    });
    }
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
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
            responder: responder) : Resultado(_pontuacaoTotal, _reiniciarQuestionario)
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
