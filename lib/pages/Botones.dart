import 'package:flutter/material.dart';



class Botones extends StatelessWidget{
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const Botones({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
            width: 70,
            height: 70,
        child: RaisedButton(
          shape:CircleBorder(),
            onPressed: ()=>callback(text),
          color: Color(fillColor),
          textColor: Color(textColor),
          child: Text(text,
          style:TextStyle(fontSize: textSize)),



        ) ,


        ),

    );


  }
}