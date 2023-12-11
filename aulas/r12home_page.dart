import 'package:flutter/material.dart';
import 'package:flutter_application_1/r12arquivos_page.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ArquivosPage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(30),
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const SizedBox(
            width: 200,
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Arquivos'),
                SizedBox(width: 8),
                Icon(Icons.save),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

