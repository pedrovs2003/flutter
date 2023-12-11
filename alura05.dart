import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Desafio 2'),
            ),
            body: Container(
              color: Colors.grey,
              child: ListView(
                children: const [
                  RowsColors(Colors.white, Colors.purple, Colors.blue),
                  RowsColors(Colors.red, Colors.purpleAccent, Colors.blueAccent),
                  RowsColors(Colors.pink, Colors.yellow, Colors.lightBlue),
                  RowsColors(Colors.white, Colors.purple, Colors.blue),
                ],
              ),
            )
            )
            );
  }
}

class RowsColors extends StatelessWidget {
  final Color c1;
  final Color c2;
  final Color c3;
  const RowsColors(this.c1, this.c2, this.c3, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double alt = 140;
    double lag = 100;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Row(
          children: [
            Container(
              width: lag,
              height: alt,
              color: c1,
            ),
            Container(
              width: lag,
              height: alt,
              color: c2,
            ),
            Container(
              width: lag,
              height: alt,
              color: c3,
            )
          ],
        ),
      ),
    );
  }
}