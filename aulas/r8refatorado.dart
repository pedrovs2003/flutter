import 'package:flutter/material.dart';

Image metodoImagem(String text, {double? largura, double? altura}) =>
    Image.asset(text, width: largura, height: altura, fit: BoxFit.fitWidth);
