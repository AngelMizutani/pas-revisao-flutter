import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  // var primeiroBotao = ElevatedButton(
  //   child: const Text('Primeiro botão'),
  //   onPressed: () {
  //     print('Primeiro botão');
  //   },
  // );

  // var segundoBotao = ElevatedButton(
  //   child: const Text('Segundo botão'),
  //   onPressed: () {
  //     print('Segundo botão');
  //   },
  // );

  Widget criarBotao(String label, VoidCallback? acao) {
    return ElevatedButton(
      child: Text(label),
      onPressed: acao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // primeiroBotao,
            // segundoBotao,
            criarBotao(
                'Contador', () => Navigator.pushNamed(context, '/contador')),
            criarBotao(
                'Hello world', () => Navigator.pushNamed(context, '/hello')),
            criarBotao('Calcular idade',
                () => Navigator.pushNamed(context, '/calcIdade')),
            criarBotao('Calculadora',
                () => Navigator.pushNamed(context, '/calculadora')),
          ],
        ),
      ),
    );
  }
}
