import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/p2/home_page.dart';

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
