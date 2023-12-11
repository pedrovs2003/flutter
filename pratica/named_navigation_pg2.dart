import 'package:flutter/material.dart';

class NNP2 extends StatelessWidget {
  const NNP2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('P2'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.yellow,
          height: 500,
          width: 500,
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: Text('Voltar pra Home')),
        ));
  }
}
