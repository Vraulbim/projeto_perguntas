import 'package:flutter/cupertino.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Parabéns, o questionário foi finalizado',
        style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 26),
      ),
    );
  }
}
