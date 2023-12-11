import 'package:flutter/material.dart';

//--------CUIDADOOOO!!!-----REPARE QUE AGORA NÃO TEMOS AQUELA PARTE DO MATERIAL APP NESSA PÁGINA QUE SE ENCONTRA O BOTÃO DE 'VOLTAR' À TELA INICIAL
class ArquivosPage extends StatelessWidget {
  const ArquivosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Página de Arquivos'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            elevation: 9,
          ),
          child: const SizedBox(
            width: 150,
            //height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_outlined, color: Colors.white),
                SizedBox(width: 15),
                Text(
                  'Voltar',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
