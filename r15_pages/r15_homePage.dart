import 'package:flutter/material.dart';

import 'r15_dados_page.dart';
import 'r15_anuncios_page.dart';
import 'r15_favoritos_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _paginaAtual = 0;

  final List<Widget> _paginas = [
    const AnunciosPage(),
    const DadosPage(),
    const FavoritosPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 69, 15),
        title: const Text('Bottom Navigation Bar'),
        // Não esquecer de comentar ou remover a linha abaixo
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Container(child: _paginas.elementAt(_paginaAtual)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.announcement), label: 'Anúncios'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Dados'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritos'),
        ],
        currentIndex: _paginaAtual,
        onTap: (int index) {
          setState(() {
            _paginaAtual = index;
          });
        },
      ),
    );
  }
}
