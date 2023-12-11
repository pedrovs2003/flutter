import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/r16/r16_P_dadosPage.dart';
import 'package:flutter_application_1/r16/r16_P_form.dart';
import 'package:flutter_application_1/r16/r16_P_routes.dart';


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
      // themeMode: ThemeMode.dark,
      themeMode: ThemeMode.light,
      routes: {
        Routes.HOME: (context) => CadastroPage(),
        Routes.PAGINA_DADOS: (context) => DadosPage(),
      },
    );
  }
}
