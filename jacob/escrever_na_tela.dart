import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final list = <String>[];
  final controlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(children: [
          SizedBox(
          width: 30, 
          height: 30, 
          child: Icon(Icons.people),),
          Text('      Lista de Nomes')]),
      ),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(child: TextField(controller: controlador,),),
                IconButton(onPressed: () {
                  final text = controlador.text;
                  setState(() {
                      list.add(text);
                  });
                  controlador.clear();
                }, icon: Container(height: 100, width: 100 ,decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),child: const Icon(Icons.add), )),
                
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index){
                final item = list[index];
                return ListTile(title: Center(child: Text(item)),);
            }),
          ),
        ],
      ),
    );
  }
}
