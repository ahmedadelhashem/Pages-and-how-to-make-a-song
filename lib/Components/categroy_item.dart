import 'package:flutter/material.dart';

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