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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
              children: List.generate(
                10,
                (index) {
                  final List<Color> cores = [
                    Colors.red, 
                    Colors.yellow,
                    Colors.green
                  ];
                  final int colorIndex = index % cores.length;
                  final Color corDoContainer = cores[colorIndex];
                  return Container(
                    color: corDoContainer,
                    width: double.infinity,
                    height: 80,
                    margin: EdgeInsets.all(12),
                    child: Center (child: Text('Color', style: TextStyle(fontSize: 25),),),
                  );
                },
              ),
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
