import 'package:flutter/material.dart';
import 'package:flutter_application_1/curso/01_images_com_legendas.dart';

main() => runApp(const Mask());

class Mask extends StatelessWidget {
  const Mask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/mask.jpg',
                fit: BoxFit.cover,
              ),
            ),

            //Abaixo, encontra-se o Container responsável pela opacidade de cor preta,
            //utilizei os dois MediaQuery... para que o container ocupe a tela inteira
            Container(
              color: Colors.black.withOpacity(0.60),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(
                    size: 150,
                    textColor: Colors.white,
                    style: FlutterLogoStyle
                        .horizontal, //Temos a logo do flutter e o nome ''Flutter'' ao seu lado direito
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LegendaCurso()));
                      },
                      child: const Text('Entrar no app'))
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(168.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   'Welcome!',
                  //   //textDirection: TextDirection.ltr, //Moveria o texto para a esquerda, mas nesse caso, o padding impede o seu acontecimento.
                  //   style: TextStyle(
                  //     fontFamily: 'Montserrat',
                  //     fontSize: 30,
                  //     color: Colors.white,
                  //   ),
                  // ),
                ],
              ),
            ),

            // Adicione um botão ao Stack
            // Positioned(
            //   bottom: 70, // Ajuste a posição vertical do botão conforme necessário
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // Ação a ser executada quando o botão for pressionado.
            //       // Você pode adicionar qualquer lógica desejada aqui.
            //     },
            //     child: const Text('Clique Aqui'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
