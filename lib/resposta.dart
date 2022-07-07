import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() selecionadoEvt;

  const Resposta(this.resposta, this.selecionadoEvt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
            onPressed: selecionadoEvt,
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white),
            child: Text(resposta)),
      ),
    );
  }
}
