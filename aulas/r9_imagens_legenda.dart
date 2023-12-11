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
      body: Stack(
        children: [
          child_01(),
          child_02(),
        ],
      ),
    );
  }

  Column child_02() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Expanded(
              //Com o Expanded, o texto deixa de dar overflow, pra isso, ele pode quebrar a linha ao meio
              child: Container(
                padding: const EdgeInsets.all(16),
                color: const Color.fromRGBO(254, 203, 0,
                    0.7), //O último número '0.7' faz com que o container que possui a mensagem seja um pouco transparente
                child: const Text(
                  'A família mais divertida do planeta!',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Image child_01() {
    return Image.asset(
      'assets/images/sofa.jpg',
      fit: BoxFit.cover,
    );
  }
}
