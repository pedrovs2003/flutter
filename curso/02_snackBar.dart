import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.blue,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Simple SnackBar')),
            ElevatedButton(
                onPressed: () {
                  final snackbar2 = SnackBar(
                    content: Text('Opa'),
                    action: SnackBarAction(
                        label: 'Desfazer',
                        onPressed: () {
                          print('Clicado!!');
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar2);
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(snackbar2);
                },
                child: Text('Snackbar'))
          ],
        ),
      ),
    );
  }
}
