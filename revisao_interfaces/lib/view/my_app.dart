import 'package:flutter/material.dart';
import 'package:revisao_interfaces/view/calculadora.dart';
import 'package:revisao_interfaces/view/calcular_idade.dart';
import 'package:revisao_interfaces/view/hello_world.dart';
import 'package:revisao_interfaces/view/menu.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) => Menu(),
        '/contador': (context) => MyHomePage(),
        '/hello': (context) => HelloWorld(),
        '/calcIdade': (context) => CalcularIdade(),
        '/calculadora': (context) => Calculadora()
      },
    );
  }
}
