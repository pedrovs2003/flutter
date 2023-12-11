import 'package:flutter/material.dart';

// ***********
//
// z
//
// ***********


class TB1 extends StatelessWidget {
  const TB1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PAGINA 1'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.red,
          child: const Center(
              child: Text(
            'Pagina 1',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
        ));
  }
}
