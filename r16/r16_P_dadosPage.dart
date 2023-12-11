import 'package:flutter/material.dart';
import 'package:flutter_application_1/r16/r16_P_pessoa.dart';

class DadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pessoa = ModalRoute.of(context)!.settings.arguments as Pessoa;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados Pessoais'),
        centerTitle: true,
      ),
      body: _body(pessoa),
    );
  }

  Container _body(pessoa) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${pessoa.nome} ${pessoa.sobrenome}',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'E-mail: ${pessoa.email}',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Senha: ${pessoa.senha}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
