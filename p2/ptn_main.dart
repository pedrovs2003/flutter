import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/p2/ptn0.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     fontFamily: 'Montserrat',
      //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      //     useMaterial3: true),

      theme: FlexThemeData.light(
        scheme: FlexScheme.amber,
        fontFamily: 'Montserrat',
      ),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.green),
      themeMode: ThemeMode.light,

      home: const PR0(),
    );
  }
}
