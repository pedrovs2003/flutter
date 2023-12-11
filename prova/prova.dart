import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: const Icon(
            Icons.shopping_cart,
            size: 50,
            color: Colors.green,
          ),
        ),
      ),
    ),
  ));
}
