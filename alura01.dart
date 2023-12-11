import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  //const MyApp({Key? key}) : super(key : key);

//QUAL A DIFERENÇA DA LINHA 8 E 9? RESPOSTA: SÃO A MESMA COISA.

  @override
  Widget build(BuildContext context){
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     // home: Container(color: Colors.black, child: Container(color: Colors.blue,),),
     home: Stack(
      alignment: AlignmentDirectional.center,
      children: [
      Container(color: Colors.blue, height: 200, width: 200,),
      Container(color: Colors.white, width: 100, height: 100,),
      Container(color: Colors.blue, width: 50, height: 50,),
      Container(color: Colors.white, width: 25, height: 25,)
     ]),
        );
    }

}