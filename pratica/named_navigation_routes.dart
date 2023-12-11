import 'package:flutter/material.dart';
import 'package:flutter_application_1/pratica/named_navigation_home.dart';
import 'package:flutter_application_1/pratica/named_navigation_pg1.dart';
import 'package:flutter_application_1/pratica/named_navigation_pg2.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const NNH(),
    '/PrimeiraPagina': (context) => const NNP1(),
    '/SegundaPagina': (context) => const NNP2(),
    // '/favoritos': (context) => const FavoritosPage(),
  };
}
