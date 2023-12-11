import 'package:flutter/material.dart';

// ***********
//
// z
//
// ***********

class TB2 extends StatelessWidget {
  const TB2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PAGINA 2'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.amber,
          child: const Center(
              child: Text(
            'Pagina 2',
            style: TextStyle(color: Colors.black, fontSize: 25),
          )),
        ));
  }
}
