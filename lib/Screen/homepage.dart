import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twoproject/Screen/numbersofpage.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(title: Text('Toku'),backgroundColor: Color(0xff46322B),),
        body:  Column(
          children: [
            Category(text:'Member',color: Colors.amber,onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return numberpage();
              }));
            }),
            Category(text: 'Family Members',color: Colors.green,),
            Category(text: 'Colors',color: Colors.purple,),
            Category(text: "Pharses",color: Colors.blueAccent,)
           ],
        ),
        );
  }
}

class Category extends StatelessWidget {
 Category({ this.text,this.color,this.onTap});

 String? text;
 Color? color;
// VoidCallback()?onTap;
Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                width: double.infinity,height: 50,child: Text(text!,style: TextStyle(color: Colors.white),),color: color ,),
    );
  }
}