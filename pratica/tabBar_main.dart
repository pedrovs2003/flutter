import 'package:flutter/material.dart';
import 'package:flutter_application_1/pratica/tabBar_pg0.dart';
import 'package:flutter_application_1/pratica/tabBar_pg1.dart';
import 'package:flutter_application_1/pratica/tabBar_pg2.dart';

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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Layout Modelo'),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Icon(Icons.pedal_bike),
              Icon(Icons.build),
              Icon(Icons.window_outlined)
            ]),
          ),
          body: const TabBarView(
            children: [TB0(), TB1(), TB2()],
          )),
    );
  }
}
