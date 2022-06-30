import 'package:flutter/material.dart';

class CalcularIdade extends StatelessWidget {
  String? nome;
  int? anoNascimento;

  Widget criarTextField(String label, String hintText, ValueChanged onChanged) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(label: Text(label), hintText: hintText),
    );
  }

  int calcularIdade(int anoNascimento) {
    int idade = (DateTime.now().year) - anoNascimento;
    print(idade);
    return idade;
  }

  void dialog(String mensagem, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(mensagem),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular Idade'),
      ),
      body: Form(
        child: Column(
          children: [
            criarTextField(
                'Nome', 'Digite o seu nome', (value) => nome = value),
            criarTextField(
                'Ano de Nascimento',
                'Digite o ano do seu nascimento',
                (value) => anoNascimento = int.parse(value)),
            ElevatedButton(
              child: const Text('Calcular Idade'),
              onPressed: () => dialog(
                  'Olá $nome! Você tem ${calcularIdade(anoNascimento!)} anos!',
                  context),
            )
          ],
        ),
      ),
    );
  }
}
