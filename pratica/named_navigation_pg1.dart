import 'package:flutter/material.dart';

class NNP1 extends StatelessWidget {
  const NNP1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('P1'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.yellow,
          height: 500,
          width: 500,
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/SegundaPagina");
          }, child: Text('Seguir p2')),
        ));
  }
}
