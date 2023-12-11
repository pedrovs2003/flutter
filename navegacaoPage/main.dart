import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegacaoPage/home_page.dart' as navegacao;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutte Demo',
      home: navegacao.HomePage(),
    );
  }
}
