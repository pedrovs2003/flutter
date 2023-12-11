import 'package:flutter/material.dart';

final fieldNome = TextEditingController();
final fieldSobrenome = TextEditingController();
final fieldEmail = TextEditingController();
final fieldSenha = TextEditingController();

void clearFields() {
  fieldNome.clear();
  fieldSobrenome.clear();
  fieldEmail.clear();
  fieldSenha.clear();
}
