import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 400,
            width: 400,
            child: Image.asset(
              'assets/images/coracao.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 120,
            width: 120,
            child: Image.asset(
              'assets/images/casal1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          // Adicione um botão ao Stack
          Positioned(
            bottom: 70, // Ajuste a posição vertical do botão conforme necessário
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser executada quando o botão for pressionado.
                // Você pode adicionar qualquer lógica desejada aqui.
              },
              child: const Text('Clique Aqui'),
            ),
          ),
        ],
      ),
    );
  }
}

//ElevatedButton: Pode ser colocado em qualquer lugar na árvore de widgets, dentro de Scaffold, Column, Row, etc.
// FloatingActionButton: É tipicamente posicionado no canto inferior direito da tela usando a propriedade floatingActionButton de Scaffold.
// No entanto, ele pode ser personalizado para outras posições se necessário.