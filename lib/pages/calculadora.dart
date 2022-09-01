import 'package:calculadora/pages/Botones.dart';
import 'package:flutter/material.dart';
import 'Botones.dart';

class Calculadora extends StatefulWidget{
  State<StatefulWidget> createState()=>Calculator();

}

class Calculator extends State<Calculadora> {
  int firstNum = 0;
  int secondNum=0;
  String history="";
  String textToDisplay="";
  String res="";
  String operation="";

  void btnOnclick(String btnVal){
      print(btnVal);
      if(btnVal=='C'){
        textToDisplay="";
        firstNum=0;
        secondNum=0;
        res='';
      }else if(btnVal =='AC'){
        textToDisplay="";
        firstNum=0;
        secondNum=0;
        res='';
        history='';
      }else if(btnVal=='+'|| btnVal=='-'||btnVal=='X'||btnVal=='/'){
        firstNum=int.parse(textToDisplay);
        res='';
        operation=btnVal;
      }else if(btnVal=='+/-'){
        if(textToDisplay[0]!= '-'){
          res='-'+textToDisplay;
        }else{
          res=textToDisplay.substring(1);
        }
      }else if(btnVal=='<'){
        res=textToDisplay.substring(0,textToDisplay.length-1);
      }
      else if(btnVal=='='){
        secondNum=int.parse(textToDisplay);
        if(operation=='+'){
          res=(firstNum+secondNum).toString();
          history=firstNum.toString() +operation.toString()+secondNum.toString();
        }
        if(operation=='-'){
          res=(firstNum-secondNum).toString();
          history=firstNum.toString() +operation.toString()+secondNum.toString();
        }
        if(operation=='X'){
          res=(firstNum*secondNum).toString();
          history=firstNum.toString() +operation.toString()+secondNum.toString();
        }
        if(operation=='/' && secondNum!=0){
          res=(firstNum/secondNum).toString();
          history=firstNum.toString() +operation.toString()+secondNum.toString();

        }else if (operation=='/' && secondNum==0){
          res="ERROR MATEMATICO";
          history="";
        }
      }else{
        res=int.parse(textToDisplay+btnVal).toString();
      }
      setState(() {
        textToDisplay=res;
      });
  }

  final textostyle = new TextStyle(fontSize: 30.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title:Text("Calculadora"),

        ),
        backgroundColor: Colors.blue[50],
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                 child: Padding(
                   padding:EdgeInsets.only(right: 12) ,
                   child: Text(
                     history,
                     style:TextStyle(fontSize: 24,color:Colors.blueGrey),
                   ),
                 ),
                 alignment: Alignment(1.0,1.0),
               ),
               Container(
                 child: Padding(
                   padding: EdgeInsets.all(12),
                   child: Text(
                     textToDisplay,
                     style:TextStyle(fontSize: 48,color:Colors.black),
                   ),
                 ),
                 alignment: Alignment(1.0,1.0),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Botones(text: "AC",fillColor: 0xFFFF6F00,textColor: 0xFFFFFFFF,textSize: 20,callback: btnOnclick,),
                   Botones(text: "C",fillColor: 0xFFF44336,textColor: 0xFFFFFFFF,textSize: 20,callback: btnOnclick,),
                   Botones(text: "<",fillColor: 0xFF2196F3,textColor: 0xFFFFFFFF,textSize: 20,callback: btnOnclick,),
                   Botones(text: "/",fillColor: 0xFF2196F3,textColor: 0xFFFFFFFF,textSize: 20,callback:btnOnclick,),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Botones(text: "9",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "8",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "7",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "X",fillColor: 0xFF2196F3,textColor: 0xFFFFFFFF,textSize: 20,callback: btnOnclick,),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Botones(text: "6",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "5",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "4",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "-",fillColor: 0xFF2196F3,textColor: 0xFFFFFFFF,textSize: 20,callback: btnOnclick,),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Botones(text: "3",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "2",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "1",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "+",fillColor: 0xFF2196F3,textColor: 0xFFFFFFFF,textSize: 20,callback: btnOnclick,),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Botones(text: "+/-",fillColor: 0xFF2196F3,textColor: 0xFFFFFFFF,textSize: 20,callback: btnOnclick,),
                   Botones(text: "0",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "00",fillColor: 0xFF9E9E9E,textColor: 0xDD000000,textSize: 20,callback: btnOnclick,),
                   Botones(text: "=",fillColor: 0xFF2196F3,textColor: 0xFFFFFFFF,textSize: 20,callback: btnOnclick,),
                 ],
               ),

             ],
          ),
        ),
      );

  }
}