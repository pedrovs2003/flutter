import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true),
      home: const HomePage1(),
    );
  }
}

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Botões da AppBar ficam no widget 'Actions'
          actions: const [
            Row(
              children: [
                Icon(
                  Icons.nature_people,
                  color: Colors.white,
                ),
                Icon(
                  Icons.nature_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
          title: const Text(
            'Solar do Engenho',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 36, 119, 39),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        drawer: const Drawer(
          child: Center(child: Text('Olá, seja bem vindo!')),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.9,
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 150,
                        child: Image.network(
                            'https://theme.zdassets.com/theme_assets/12862738/867e796a78b31e83d8c55d5c684dfa28efaea1c9.png'),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.topRight,
                            // child: const Center(
                            //   child: Icon(
                            //     size: 40,
                            //     Icons.format_align_justify,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    height: 70,
                    child: const Text(
                      'O Paraíso,',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 60,
                          color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    height: 80,
                    child: const Text(
                      'mora aqui',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DancingScript',
                          fontSize: 60,
                          color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 230),
                  Stack(
                    children: [
                      Center(
                        child: Positioned(
                          child: Opacity(
                            opacity: 0.8,
                            child: Container(
                              height: 100,
                              width: 700,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color.fromARGB(255, 18, 111, 21),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Expanded(
                            //Impede que ocorra overflow
                            child: Center(
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    )),
                                width: 600,
                                height: 50,
                                child: const Center(
                                  child: Text(
                                    'Clique aqui para informações, Valores e ingressos',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        size: 40,
                        Icons.chat,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
