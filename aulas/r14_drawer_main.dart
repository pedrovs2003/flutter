import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'r14rotas.dart';

// ***********
//
// Na navegação nomeada, retire tudo que fica entre main e antes do primeiro @override
//
// ***********

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(scheme: FlexScheme.amber),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.amber),
        themeMode: ThemeMode.dark,
        routes: routes());
  }
}
