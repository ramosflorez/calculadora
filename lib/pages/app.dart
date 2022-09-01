import 'package:flutter/material.dart';
import 'calculadora.dart';
class MyApp extends StatelessWidget{

  //crear widget
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(
        child: Calculadora(),
      ),
    );
  }
}