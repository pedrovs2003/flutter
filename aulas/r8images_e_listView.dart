import 'package:flutter/material.dart';
import 'package:flutter_application_1/r8refatorado.dart';

// ***********
//
// Layout Modelo Básico - STATELESS
//
// ***********

main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true),
        home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Modelo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          metodoImagem('assets/images/casal.jpg'),
          metodoImagem('assets/images/casal1.jpeg',),
          metodoImagem('assets/images/coracao.jpg',),
          metodoImagem('assets/images/coracao.png',),
          metodoImagem('assets/images/mask.jpg',),
        ],
      )
    );
  }
}