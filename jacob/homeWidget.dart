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
      home: HomeController(
        child: _HomeWidgetState(),
      ),
    );
  }
}

class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  HomeController({
    Key? key,
    required Widget child,
  }) : super(
          key: key,
          child: child,
          notifier: ValueNotifier(0),
        );

  static HomeController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  int get value => notifier!.value;

  increment() {
    notifier!.value++;
  }
}

class _HomeWidgetState extends StatefulWidget {
  const _HomeWidgetState({super.key});

  @override
  State<_HomeWidgetState> createState() => __HomeWidgetStateState();
}

class __HomeWidgetStateState extends State<_HomeWidgetState> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {

    final names = ['João', 'Maria', 'Joaquim', 'Pedro', 'José'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: names.length, //imprimirá a quantidade de itens relativa ao tamanho da lista
          itemBuilder: (context, index) {
            final name = names[index]; //Se colocar mais nome na lista, eles serão impressos na tela
            return ListTile(
              title: Text(name), //imprime os nomes que estão na lista
            );            
          },



          //Imprime 10 containers verdes na tela

          // child: ListView.builder(
          // itemCount: 10,
          // itemBuilder: (context, index) {
          //   return Container(
          //     color: Colors.green,
          //     height: 80,
          //     width: double.infinity,
          //     margin: EdgeInsets.all(12),
          //   );            
          // },

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
