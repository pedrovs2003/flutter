import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Semaforo'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    color: Colors.grey.shade900,
                    width: 180,
                    height: 400,
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  lampada(Colors.red, 'Red'),
                  const SizedBox(
                    height: 15,
                  ),
                  lampada(Colors.orange, 'Yellow'),
                  const SizedBox(
                    height: 15,
                  ),
                  lampada(Colors.green, 'Green'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                            color: Colors.black,
                            height: 145,
                            width: 70,
                          ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container lampada(cor, texto) {
    return Container(
      decoration: BoxDecoration(
          color: cor,
          borderRadius: const BorderRadius.all(Radius.circular(200))),
      height: 100,
      width: 100,
      // margin: const EdgeInsets.only(left: 50, top: 50), //margem de fora, distancia da caixa até a lateral da pagina
      // padding: const EdgeInsets.all(50), //margem de dentro, distancia do elemento pro final da caixa

      child: Center(child: Text(texto)),
    );
  }
}
