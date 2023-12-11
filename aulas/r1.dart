import 'package:flutter/material.dart';

void main(){
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLUTTER',
      theme: ThemeData(
        primarySwatch: Colors.pink
        
              ),
      home: Scaffold(
        appBar: AppBar(title: const Text('My first app'),
        centerTitle: true,),
       body: const Center(child: Text('Hello World Flutter!'),)
      )
    ),
  );
}



                            