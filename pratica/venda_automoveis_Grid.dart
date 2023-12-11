import 'package:flutter/material.dart';
import 'package:flutter_application_1/pratica/netflix.dart';

main() => runApp(const Venda());

class Carros {
  String nome;
  String path;
  Carros(this.nome, this.path);
}

class Motos {
  String name;
  String caminho;
  Motos(this.name, this.caminho);
}

class Venda extends StatelessWidget {
  const Venda({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Carros> coches = [
      Carros('Brasilia', 'assets/images/brasilia.jpg'),
      Carros('Bugatti', 'assets/images/bugatti.webp'),
      Carros('Camaro', 'assets/images/camaro.jpg'),
      Carros('Civic', 'assets/images/civic.jpg'),
      Carros('Corolla', 'assets/images/corolla.jpg'),
      Carros('Doblo', 'assets/images/doblo.jpg'),
      Carros('Ferrari', 'assets/images/ferrari.jpg'),
      Carros('Frontier', 'assets/images/frontier.jpg'),
      Carros('Fusca', 'assets/images/fusca.jpg'),
      Carros('Gol', 'assets/images/gol.webp'),
      Carros('I30', 'assets/images/i30.jpg'),
      Carros('Ford Ka', 'assets/images/ka.jpg'),
      Carros('Land Rover', 'assets/images/land rover.webp'),
      Carros('Maserati', 'assets/images/maserati.webp'),
      Carros('Mobi', 'assets/images/mobi.jpg'),
      Carros('Toro', 'assets/images/toro.webp'),
      Carros('Uno', 'assets/images/uno.jpg'),
      Carros('Celta', 'assets/images/xelta.jpg'),
    ];

    List<Motos> motorcycles = [
      Motos('Biz', 'assets/images/biz.jpg'),
      Motos('Bross', 'assets/images/bross.jpg'),
      Motos('Cb 300', 'assets/images/cb.jpg'),
      Motos('Cg', 'assets/images/cg.jpg'),
      Motos('Crosser', 'assets/images/crosser.png'),
      Motos('Fazer', 'assets/images/fazer.jpg'),
      Motos('Harley', 'assets/images/harley.jpg'),
      Motos('Pcx', 'assets/images/pcx.jpg'),
      Motos('Pop 100', 'assets/images/pop100.webp'),
      Motos('R9', 'assets/images/r9.jpg'),
      Motos('Tenerê', 'assets/images/tenere.jpg'),
      Motos('Titan', 'assets/images/titan.jpg'),
      Motos('Twistter', 'assets/images/twistter.jpg'),
      Motos('Voltz', 'assets/images/voltz.jpg'),
    ];

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          'Venda de Automóveis',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 111, 197),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 2, 230, 246),
              height: 50,
              width: double.infinity,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Compre seu carro novo ou seminovo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: coches.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                Carros cars = coches[index];
                Image imagemFormatada = Image.asset(
                  cars.path,
                  fit: BoxFit.contain,
                );
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: Colors.black,
                    ),
                    imagemFormatada,
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: const EdgeInsets.all(12),
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                cars.nome,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context) => Netflix()));
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(3),
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              child: const SizedBox(
                                width: 80,
                                height: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Comprar',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(width: 3),
                                    Icon(
                                      Icons.shopping_cart,
                                      size: 10,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),

            Container(
              color: const Color.fromARGB(255, 2, 230, 246),
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                'As melhores motos do mercado!',
                style: TextStyle(color: Colors.white),
              ),
            ),

            // Segunda GridView para motos

            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: motorcycles.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                Motos moto = motorcycles[index];
                Image imagemFormatada = Image.asset(
                  moto.caminho,
                  fit: BoxFit.contain,
                );
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: Colors.black,
                    ),
                    imagemFormatada,
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: const EdgeInsets.all(12),
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                moto.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 85,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(3),
                                textStyle: const TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              child: const SizedBox(
                                width: 80,
                                height: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Comprar', 
                                      style: TextStyle(color: Colors.black), 
                                    ),
                                    SizedBox(width: 3),
                                    Icon(
                                      Icons.shopping_cart,
                                      size: 10,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
