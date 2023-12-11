import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minhas fontes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fontes', style: TextStyle(fontFamily: 'PixelifySans')),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        color: const Color.fromRGBO(139, 0, 139, 0.2), //Cor do fundo da página
        child: const Center(
          child: Text(
            'Flutter!\n\nO tempo todo!!!',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 40,
                fontWeight: FontWeight.w600,
                // fontStyle: FontStyle.italic,
                // decoration: TextDecoration.overline,
                decorationColor: Colors.blue,
                // decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 2,
                color: Color(0xFFC70039)),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
