import 'package:flutter/material.dart';
import 'package:flutter_application_1/r13_favoritos.dart';
import 'package:flutter_application_1/r13anuncios_page.dart';
import 'package:flutter_application_1/r13dados_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Modelo'),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.announcement)),
            Tab(icon: Icon(Icons.cloud)),
            Tab(icon: Icon(Icons.favorite)),
          ]),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            AnunciosPage(),
            DadosPage(),
            FavoritosPage(),
          ],
        ),
      ),
    );
  }
}
