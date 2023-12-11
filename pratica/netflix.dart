import 'package:flutter/material.dart';
import 'package:flutter_application_1/pratica/venda_automoveis_Grid.dart';
import '../jacob/mascara2.dart';

main() => runApp(const Netflix());

class Netflix extends StatelessWidget {
  const Netflix({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
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
        body: ListView(
      children: [
        Center(
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  'https://pbs.twimg.com/media/DWP-J1xW4AIQ4VN.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 50, top: 22),
                    child: const Text(
                      'NETFLIX',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 10, top: 22),
                    child: const Text(
                      'Início',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 10, top: 22),
                    child: const Text(
                      'Séries',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 10, top: 22),
                    child: const Text(
                      'Filmes',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 10, top: 22),
                    child: const Text(
                      'Bombando',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 10, top: 22),
                    child: const Text(
                      'Minha lista',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 550,
                    ),
                  ),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 30, right: 20, top: 22),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                  Container(
                      margin: const EdgeInsets.only(right: 20, top: 22),
                      child: const Icon(
                        Icons.add_alert,
                        color: Colors.white,
                      )),
                  Container(
                      height: 30,
                      width: 30,
                      margin: const EdgeInsets.only(right: 20, top: 22),
                      child: Image.network(
                        'https://st3.depositphotos.com/2024219/31793/i/450/depositphotos_317939792-stock-photo-young-woman-over-isolated-yellow.jpg',
                        fit: BoxFit.cover,
                      )),
                  Container(
                      margin: const EdgeInsets.only(right: 20, top: 22),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        child: const Text(
                          'N',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: const Text(
                          'SÉRIE',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                    width: 0,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            width: 200,
                            child: Text(
                              'La Casa de Papel',
                              maxLines: 2,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 50, top: 5),
                            width: 500,
                            child: const Text(
                              'La Casa de Papel és una serie muy buena, que va a dejarte muy contento despues de assitirla! You que tú, haria eso lo más rapido posible, todos que la assiten se acabam enamorados con ella',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 3,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 170,
                                height: 50,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.all(5),
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    //Navegação entre telas abaixo. Utilizando o 'push' temos a opção de voltar na tela anterior. Ao subistituir o 'push' pelo 'pushReplacement' não há mais a opção de retornar para a página anterior

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Mask(),
                                      ),
                                    );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                  ),
                                  label: const Text(
                                    'Assistir',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                width: 300,
                                height: 50,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.all(5),
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Venda(),
                                      ),
                                    );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.grey),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.info_outline,
                                    color: Colors.black,
                                  ),
                                  label: const Text(
                                    'Mais informações',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
