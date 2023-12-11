import 'package:flutter/material.dart';

class PR1 extends StatelessWidget {
  const PR1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black, // Defina a cor desejada aqui
          ),
          title: const Text(
            'Catálogo de Bandas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black87,
              fontFamily: 'Montserrat',
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 7),
              child: Column(
                children: [
                  linhaDaMusica(context, 'assets/images/voltz.jpg'),
                  linhaDaMusica(context, 'assets/images/twistter.jpg'),
                  linhaDaMusica(context, 'assets/images/voltz.jpg'),
                  linhaDaMusica(context, 'assets/images/tenere.jpg'),
                  linhaDaMusica(context, 'assets/images/twistter.jpg'),
                  linhaDaMusica(context, 'assets/images/titan.jpg'),
                  linhaDaMusica(context, 'assets/images/tenere.jpg'),
                  linhaDaMusica(context, 'assets/images/twistter.jpg'),
                  linhaDaMusica(context, 'assets/images/voltz.jpg'),
                  linhaDaMusica(context, 'assets/images/tenere.jpg'),
                  linhaDaMusica(context, 'assets/images/twistter.jpg'),
                ],
              ),
            ),
          ],
        ));
  }

  Row linhaDaMusica(BuildContext context, String foto) {
    return Row(
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
              'lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna',
              style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.normal,
                  fontFamily: 'Montserrat Regular'),
              maxLines: 4,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () => _showDialog(context),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              // padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 15)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            child: const SizedBox(
              width: 60,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ouvir',
                    style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 3),
                  Icon(Icons.arrow_forward_ios_outlined,
                      size: 15, color: Colors.black87),
                ],
              ),
            ),
          ),
        ),
      ],
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
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.w200),
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
