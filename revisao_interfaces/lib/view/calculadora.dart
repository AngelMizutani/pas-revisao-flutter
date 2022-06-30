import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculadora extends StatelessWidget {
  String valor = '';

  Widget criarBotao(String label) {
    return ElevatedButton(
        child: Text(label),
        onPressed: () {
          valor = valor + label;
          print(valor);
        });
  }

  String? concatenarValor(String label) {
    valor = valor + label;
    return valor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora'),
        ),
        body: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextField(
                readOnly: true,
                onChanged: (value) => valor = valor + value,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  criarBotao('C'),
                  criarBotao('()'),
                  criarBotao('%'),
                  criarBotao('/')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  criarBotao('7'),
                  criarBotao('8'),
                  criarBotao('9'),
                  criarBotao('*')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  criarBotao('4'),
                  criarBotao('5'),
                  criarBotao('6'),
                  criarBotao('-')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  criarBotao('1'),
                  criarBotao('2'),
                  criarBotao('3'),
                  criarBotao('+')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  criarBotao('0'),
                  criarBotao('.'),
                  criarBotao('<-'),
                  criarBotao('=')
                ],
              ),
            ],
          ),
        ));
  }
}
