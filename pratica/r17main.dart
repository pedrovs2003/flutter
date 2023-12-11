import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pratica/r17.dart';
import 'package:flutter_application_1/r16_dadosPage.dart';
import 'package:flutter_application_1/r16_form.dart';
import 'package:flutter_application_1/r16_routes.dart';

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

  home: HomePage()
    );
  }
}
