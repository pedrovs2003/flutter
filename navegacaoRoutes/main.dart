import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegacaoPage/page1.dart';
import 'package:flutter_application_1/navegacaoPage/page2.dart';
import 'package:flutter_application_1/navegacaoPage/page3.dart';
import 'package:flutter_application_1/navegacaoPage/page4.dart';
import 'package:flutter_application_1/navegacaoRoutes/home_page.dart'
    as navegacao;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutte Demo',
      routes: {
        '/': (_) => navegacao.HomePage(),
        '/page1': (_) => Page1(),
        '/page2': (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
      },
    );
  }
}
