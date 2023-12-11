import 'package:flutter/material.dart';
import 'package:flutter_application_1/r16_cadastroPage.dart';
import 'package:flutter_application_1/r16_pessoa.dart';
import 'package:flutter_application_1/r16_routes.dart';
import 'package:flutter_application_1/r16_validation.dart';

class CadastroPage extends StatefulWidget {
  CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final Validation validar = Validation();
  final _formKey = GlobalKey<FormState>();
  final Pessoa usuario = Pessoa();
  bool passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Página de Cadastro'),
          // Não esquecer de comentar ou remover a linha abaixo
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(children: [
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    autofocus:
                        true, //A aplicação inicia já nos induzindo a preencer o campo "name"
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Type your name',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                    validator: (nome) => validar.campoNome(nome.toString()),

                    //Em resumo, sempre que esse callback onSaved for acionado, ele pegará o valor do campo associado (representado por value) e o atribuirá à propriedade nome do objeto usuario.

                    onSaved: (String? value) {
                      usuario.nome = value;
                    },
                    controller: fieldNome,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    autofocus:
                        true, //A aplicação inicia já nos induzindo a preencer o campo "name"
                    decoration: const InputDecoration(
                      labelText: 'Surname',
                      hintText: 'Type your surname',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                    validator: (sobrenome) =>
                        validar.campoSobreNome(sobrenome.toString()),
                    onSaved: (String? value) {
                      usuario.sobrenome = value;
                    },
                    controller: fieldSobrenome,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Type your email',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                    validator: (email) => validar.campoEmail(email.toString()),
                    onSaved: (String? value) {
                      usuario.email = value;
                    },
                    controller: fieldEmail,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText:
                        passwordObscured, //Não mostra na tela qual número digitamos
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Type your password',
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      suffixIcon: IconButton(
                        icon: Icon(passwordObscured
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() => passwordObscured = !passwordObscured);
                        },
                      ),
                    ),
                    validator: (senha) => validar.campoSenha(senha.toString()),
                    onFieldSubmitted: (value) {
                      _onSubmit(context);
                    },
                    onSaved: (String? value) {
                      usuario.senha = value;
                    },
                    controller: fieldSenha,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _onSubmit(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      child: const Text('Cadastrar'),
                    ),
                  )
                ]),
              )),
        ));
  }

  void _onSubmit(inContext) {
    if (_formKey.currentState!.validate()) {
      print('Formulário Validado!');
      // Salva os dados preenchido no formulário através das propriedades onSaved de cada campo do formulário
      _formKey.currentState!.save();
      // chama a rota nomeada enviando enviando os dados do usuário só que agora os dados do usuário são enviados como argumentos da rota
      Navigator.of(inContext)
          .pushNamed(Routes.PAGINA_DADOS, arguments: usuario);
    } else {
      print('********* Formulário com erros. ********');
      showDialog(
        context: inContext,
        barrierDismissible: false,
        builder: (inContext) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text('Dados Inválidos!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(inContext);
                  },
                  child: Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(inContext);
                  },
                  child: Text('OK'),
                ),
              ],
            ),
          );
        },
      );
    }
    _formKey.currentState!.save();
    // Limpa os campos do formulário
    clearFields();
  }
}
