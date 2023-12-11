import 'package:flutter/material.dart';

// *********************************
//
// Layout Modelo Básico - STATELESS
//
// *********************************

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.dark
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
        title: const Text('Layout Modelo'),
        centerTitle: true,
      ),
      body: Container(
       // color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(16), child: _texto('Texto 1', 22)),
                Container(
                    padding: const EdgeInsets.all(16), child: _texto('Texto 2', 22)),
                Container(
                    padding: const EdgeInsets.all(16), child: _texto('Texto 3', 22)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(16), child: _texto('Texto 4', 22)),
                Container(
                    padding: const EdgeInsets.all(16), child: _texto('Texto 5', 22)),
                Container(
                    padding: const EdgeInsets.all(16), child: _texto('Texto 6', 22)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _texto(String msg, double fontSize) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16), //Distancia do container até a margem da pagina
                margin: const EdgeInsets.only(top: 10, bottom: 10), //Distancia do Texto dentro do container até a borda do próprio container
                child: Text(
                  msg,
                  style: TextStyle(fontSize: fontSize, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
