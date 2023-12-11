import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue, 
      ),
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: const Text('Column & Row Nested'),
          centerTitle: true,
        ),
        body: const SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Caixa(Colors.white, 'Pedro', 15),
                  // const SizedBox(width: 100,),
                  Caixa(Colors.white, 'Maria', 15),
                  //const SizedBox(width: 100,),
                  Caixa(Colors.white, 'José', 15),
                ],
              ),
              //const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Caixa(Colors.white, 'Mônica', 15),
                  // const SizedBox(width: 100,),
                  Caixa(Colors.white, 'Antonio', 15),
                  //const SizedBox(width: 100,),
                  //Container(margin: EdgeInsets.only(left: 50, right: 50, top: 0),child: ElevatedButton(child: const Text('Botão 01'), onPressed: () {})),
                  Caixa(Colors.white, 'Anaaaaaaaaaaaa', 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Widget criado para personalização dos containers

class Caixa extends StatelessWidget {
  final Color cor;
  final String texto;
  final double fonte;
  
  const Caixa(
    this.cor,
    this.texto,
    this.fonte, {
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 25),
        child: Container(
          color: cor,
          width: 100,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 23),
            child: Center(
              child: Text(
                texto,
                style:
                    TextStyle(fontSize: fonte, overflow: TextOverflow.ellipsis),
              ),
            ),
          ),
        ));
  }
}
