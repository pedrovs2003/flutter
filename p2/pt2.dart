import 'package:flutter/material.dart';

// ***********
//
// Layout Modelo Básico - STATELESS
//
// ***********

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true),
      home: const PM2(),
    );
  }
}

class PM2 extends StatelessWidget {
  const PM2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black, // Defina a cor desejada aqui
          ),
          title: const Text(
            'Catálago de Bandas',
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              color: Color.fromARGB(0, 12, 11, 11),
            ),
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      linhaDaMusica('assets/images/fusca.jpg'),
                      linhaDaMusica('assets/images/fazer.jpg'),
                      linhaDaMusica('assets/images/ferrari.jpg'),
                      linhaDaMusica('assets/images/frontier.jpg'),
                      linhaDaMusica('assets/images/doblo.jpg'),
                      linhaDaMusica('assets/images/ka.jpg'),
                      linhaDaMusica('assets/images/land rover.webp'),
                      linhaDaMusica('assets/images/mobi.jpg'),
                      linhaDaMusica('assets/images/publi0.jpg'),
                      linhaDaMusica('assets/images/pop100.webp'),
                      linhaDaMusica('assets/images/sofa.jpg')
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }

  Container linhaDaMusica(String foto) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            width: 170,
            color: Colors.amber,
            child: Image.asset(
              foto,
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                softWrap: true,
                'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontFamily: ''),
                maxLines: 4,
              ),
            ),
          ),
          Builder(builder: (BuildContext inContext) {
            return Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () => _showDialog(inContext),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const SizedBox(
                  width: 80,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ouvir',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Montserrat'),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

void _showDialog(inContext) {
  showDialog(
    context: inContext,
    // true: fecha o alerta se o usuário clicar em qualquer lugar na tela
    // false: não fecha o alerta se o usuário clicar em qualquer lugar na tela
    barrierDismissible: true,
    builder: (inContext) {
      return WillPopScope(
        // true: fecha o alerta se o usuário clicar em voltar
        // false: não fecha o alerta se o usuário clicar em voltar
        onWillPop: () async => false,
        child: AlertDialog(
          title: const Text(
            'Cadastre-se para ouvir as músicas',
            style: TextStyle(fontFamily: ''),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  // Fecha a janela do alerta ao clicar em 'ok'
                  Navigator.pop(inContext);
                },
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0), // Define as bordas arredondadas
          ),
          backgroundColor:
              Colors.green[100], // Define a cor de fundo como verde suave
        ),
      );
    },
  );
}
