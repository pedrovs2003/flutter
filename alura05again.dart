import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Que bonito'),
          centerTitle: true, 
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: const [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      WidgetRow(
                          Colors.white,
                          Colors.purple,
                          Colors.blue,
                          120,
                          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                          Icons.accessibility_outlined),
                                        SizedBox(height: 10,),

                      WidgetRow(
                          Colors.white,
                          Colors.purple,
                          Colors.blue,
                          120,
                          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                          Icons.accessibility_outlined),
                                        SizedBox(height: 10,),

                      WidgetRow(
                          Colors.white,
                          Colors.purple,
                          Colors.blue,
                          120,
                          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                          Icons.accessibility_outlined),
                                        SizedBox(height: 10,),

                      WidgetRow(
                          Colors.white,
                          Colors.purple,
                          Colors.blue,
                          120,
                          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                          Icons.accessibility_outlined),
                                        SizedBox(height: 10,),

                      WidgetRow(
                          Colors.white,
                          Colors.purple,
                          Colors.blue,
                          120,
                          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                          Icons.accessibility_outlined),
                                        SizedBox(height: 10,),

                      WidgetRow(
                          Colors.white,
                          Colors.purple,
                          Colors.blue,
                          120,
                          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                          Icons.accessibility_outlined),
                                        SizedBox(height: 10,),

                      WidgetRow(
                          Colors.white,
                          Colors.purple,
                          Colors.blue,
                          120,
                          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                          Icons.accessibility_outlined),
                                        SizedBox(height: 10,),

                      WidgetRow(
                          Colors.white,
                          Colors.purple,
                          Colors.blue,
                          120,
                          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                          Icons.accessibility_outlined),

                      SizedBox(
                        height: 20,
                      ),
                      
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetRow extends StatelessWidget {
  final Color c1;
  final Color c2;
  final Color c3;
  final double largura;
  final String imagem;
  final IconData icone;
  const WidgetRow(
    this.c1,
    this.c2,
    this.c3,
    this.largura,
    this.imagem,
    this.icone, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 5),
            color: c1,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.only(right: 5),
          width: largura,
          height: 140,
          child: Image.network(
            imagem,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 5),
            borderRadius: BorderRadius.circular(20),
            color: c2,
          ),
          margin: const EdgeInsets.only(right: 5),
          width: largura,
          height: 140,
          child: Icon(icone),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 5),
              color: c3,
              borderRadius: BorderRadius.circular(20)),
          width: largura,
          height: 140,
          child: Image.network(
            imagem,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
