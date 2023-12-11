import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ***********
//
// TOAST
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (BuildContext inContext) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => _showSnackBar(inContext),
                      child: const Text('SnackBar'),
                    ),
                    ElevatedButton(
                      onPressed: () => _showDialog(inContext),
                      style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                child: const Text('Botão 08',
                    style: TextStyle(color: Colors.white)),
                    ),
                    ElevatedButton(
                      onPressed: () => _showToast(inContext),
                      child: const Text('Toast'),
                    ),
                  ],
                );
              },
            ),
          ],
        ));
  }
}

void _showToast(inContext) {
  Fluttertoast.showToast(
    msg: 'Mensagem do Toast!',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.green,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

void _showDialog(inContext) {
  showDialog(
    context: inContext,
    // true: fecha o alerta se o usuário clicar em qualquer lugar na tela
    // false: não fecha o alerta se o usuário clicar em qualquer lugar na tela
    barrierDismissible: true,
    builder: (inContext) {
      return WillPopScope(
        // true: fecha o alerta se o usuário clicar em voltar
        // false: não fecha o alerta se o usuário clicar em voltar
        onWillPop: () async => false,
        child: AlertDialog(
          title: const Text('Mensagem do Dialog'),
          actions: [
            TextButton(
              onPressed: () {
                // Fecha a janela do alerta ao clicar em 'cancelar'
                Navigator.pop(inContext);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                // Fecha a janela do alerta ao clicar em 'ok'
                Navigator.pop(inContext);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    },
  );
}

void _showSnackBar(inContext) {
  ScaffoldMessenger.of(inContext).showSnackBar(
    SnackBar(
      content: const Text(
        'Olá Pessoal',
        style: TextStyle(color: Colors.yellow),
      ),
      action: SnackBarAction(
        label: 'Eu sou uma snackBar',
        onPressed: () {},
      ),
    ),
  );
}
