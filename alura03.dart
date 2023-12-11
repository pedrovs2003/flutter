import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Container(
 color: Colors.black,
 child: Column(
   mainAxisAlignment: MainAxisAlignment.spaceAround,
   crossAxisAlignment: CrossAxisAlignment.center,
   children: [
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 15)
                    ),
         ),
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
            border: Border.all(color: Colors.orange, width: 10)
           ),
         ),
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
            border: Border.all(color: Colors.yellow, width: 5)
           ),
         ),
       ],
     ),
        Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black26, width: 15)),
         ),
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(color: Colors.black26, width: 10)
           ),
         ),
         Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.black26, width: 5)
           ),
         ),
       ],
     ),
        Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Container(
           color: Colors.red,
           width: 100,
           height: 100,
         ),
         Container(
           color: Colors.orange,
           width: 100,
           height: 100,
         ),
         Container(
           color: Colors.yellow,
           width: 100,
           height: 100,
         ),
       ],
     ),
     
   ],
 ),
));
}}