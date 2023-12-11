import 'package:flutter/material.dart';

class NNH extends StatelessWidget {
  const NNH({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.green,
          height: 500,
          width: 500,
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/PrimeiraPagina");
          }, child: Text('Seguir p1')),
        ));
  }
}
