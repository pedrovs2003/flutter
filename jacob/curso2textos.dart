import 'package:flutter/material.dart';

main() {
  runApp(const AppWifget('Pedro'));
}

class AppWifget extends StatelessWidget {
  final String nome;

  const AppWifget(this.nome, {super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black),
        home: Center(
          child: Container(
              child: Text(
            nome,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              decoration: TextDecoration.none, //Tira as linhas amarelas que havia abaixo da palavra "Pedro"
              fontFamily: 'Montserrat',
              fontSize: 70,
            ),
            textAlign: TextAlign.center,
          )),
        ));
  }
}

