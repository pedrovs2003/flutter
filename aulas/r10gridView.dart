import 'package:flutter/material.dart';

// ***********
//
// Layout Modelo Básico - STATELESS
//
// ***********

main() => runApp(const MyApp());

class Img {
  String nome;
  String path;
  Img(this.nome, this.path);
}

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
    List<Img> imgs = [
      Img("Homer Simpson", "assets/images/jogar.jpg"),
      Img("Marge Simpson", "assets/images/mask.jpg"),
      Img("Bart Simpson", "assets/images/meditar.jpeg"),
      Img("Lisa Simpson", "assets/images/sala.jpg"),
      Img("Meg Simpson", "assets/images/sofa.jpg"),
      Img("Homer Simpson", "assets/images/jogar.jpg"),
      Img("Marge Simpson", "assets/images/mask.jpg"),
      Img("Bart Simpson", "assets/images/meditar.jpeg"),
      Img("Lisa Simpson", "assets/images/sala.jpg"),
      Img("Homer Simpson", "assets/images/jogar.jpg"),
      Img("Marge Simpson", "assets/images/mask.jpg"),
      Img("Bart Simpson", "assets/images/meditar.jpeg"),
      Img("Lisa Simpson", "assets/images/sala.jpg"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout Modelo'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: imgs.length,
            itemBuilder: (context, index) {
              Img img = imgs[index];
              Image imagemFormatada = Image.asset(
                img.path,
                fit: BoxFit.cover,
              );
              return Stack(
                fit: StackFit
                    .expand, //Define como os widgets empilhados devem se ajustar ao tamanho do espaço disponível. Neste caso, eles se expandirão para preencher todo o espaço do item da grade.
                children: [
                  imagemFormatada,
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        img.nome,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                ],
              );
            }));
  }
}
