import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

// *******************************************
//
// Layout Modelo Básico 2 - STATELESS
// Usando flex_color_scheme: ^7.0.0
// https://pub.dev/packages/flex_color_scheme
//
// ********************************************

// ATENÇÃO: Incluir no arquivo: pubspec.yaml
// em dependencies:
//   flex_color_scheme: ^7.0.0
//
// Não esquecer de rodar a aplicação novamente
// para que as atualizações do pubspec possam
// ser utilizadas na aplicação

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Atualizações necessárias para funcionamento
      // flex_color_scheme
      theme: FlexThemeData.light(scheme: FlexScheme.amber),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.amber),
      themeMode: ThemeMode.dark,
      //themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Layout Modelo'),
        // Não esquecer de comentar ou remover a linha abaixo
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Comece aqui!'),
      ),
    );
  }
}
