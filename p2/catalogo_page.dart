import 'package:flutter/material.dart';

class CatalogoPage extends StatelessWidget {
  const CatalogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: const Text(
            'Catálogo de Filmes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.red,
              fontFamily: 'Montserrat',
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 7),
              child: Column(
                children: [
                  linhaDoFilme(context, 'assets/images/01.jpg'),
                  linhaDoFilme(context, 'assets/images/02.jpg'),
                  linhaDoFilme(context, 'assets/images/03.jpg'),
                  linhaDoFilme(context, 'assets/images/04.jpg'),
                  linhaDoFilme(context, 'assets/images/05.jpg'),
                  linhaDoFilme(context, 'assets/images/06.jpg'),
                  linhaDoFilme(context, 'assets/images/07.jpg'),
                  linhaDoFilme(context, 'assets/images/08.jpg'),
                  linhaDoFilme(context, 'assets/images/09.jpg'),
                  linhaDoFilme(context, 'assets/images/10.jpg'),
                ],
              ),
            ),
          ],
        ));
  }

  Row linhaDoFilme(BuildContext context, String foto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 100,
          width: 170,
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
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500),
              maxLines: 4,
            ),
          ),
        ),
        Container(
          //margin: const EdgeInsets.only(left: 20, right: 20),
          width: 126,
          child: ElevatedButton(
            onPressed: () => _showDialog(context),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              // padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 15)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            child: const SizedBox(
              width: 100,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Assistir',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.arrow_forward_ios_outlined,
                      size: 15, color: Colors.white),
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
            'Cadastre-se para assistir',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Fecha a janela do alerta ao clicar em 'ok'
                Navigator.pop(inContext);
              },
              child: const Text(
                'OK',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      );
    },
  );
}
