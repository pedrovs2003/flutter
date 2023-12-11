import 'package:flutter/material.dart';
import 'package:flutter_application_1/pratica/nav_t2.dart';

// ***********
//
// Layout Modelo Básico - STATELESS
//
// ***********

class Pg1 extends StatelessWidget {
  const Pg1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page One',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
        iconTheme: const IconThemeData(
            color: Colors
                .white), //Define a cor da seta no canto superior esquerdo da página para branca
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 9,
              ),
              child: const SizedBox(
                width: 150,
                //height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_outlined, color: Colors.white),
                    SizedBox(width: 15),
                    Text(
                      'Go Back',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Pg2(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 9,
              ),
              child: const SizedBox(
                width: 150,
                //height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward_outlined, color: Colors.white),
                    SizedBox(width: 15),
                    Text(
                      'Página 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
