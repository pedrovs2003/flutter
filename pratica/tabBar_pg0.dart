import 'package:flutter/material.dart';

// ***********
//
// z
//
// ***********


class TB0 extends StatelessWidget {
  const TB0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PAGINA 0'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.purple,
          child: const Center(
              child: Text(
            'Pagina 0',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
        ));
  }
}
