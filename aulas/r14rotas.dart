import 'package:flutter/material.dart';
import 'package:flutter_application_1/favoritos_page.dart';
import 'package:flutter_application_1/r14_dados_page.dart';
import 'package:flutter_application_1/r14_home_page.dart';
import 'r13anuncios_page.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const R14(),
    '/anuncios': (context) => const AnunciosPage(),
    '/dados': (context) => const DadosPage(),
    '/favoritos': (context) => const FavoritosPage(),
  };
}
