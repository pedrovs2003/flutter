import 'package:flutter/material.dart';
import 'package:flutter_application_1/r12home_page.dart';

// ***********
//
// Layout Modelo Básico - STATELESS
//
// ***********

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