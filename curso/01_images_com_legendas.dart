import 'package:flutter/material.dart';

main() => runApp(const LegendaCurso());

class LegendaCurso extends StatelessWidget {
  const LegendaCurso({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout Modelo'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/sofa.jpg'),
                  fit: BoxFit.cover,
                )),
                child: const Center(
                    child: Text('Essa é a sala de estar',
                        style: TextStyle(
                            backgroundColor: Colors.white, fontSize: 22))),
              )
            ],
          ),
        ));
  }
}
