import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:twoproject/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key,required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 80,
        color: Colors.amber,
        child: Row(
          
          children: [
         Container(color: Color(0xffFFF6DC),child:Image.asset(number.image)),
         SizedBox(width: 10,),
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
          Text(number.jpname,style: TextStyle(fontSize: 18,color: Colors.white),),
          Text(number.enname,style: TextStyle(fontSize: 18,color: Colors.white))
         ],),
         Spacer(),
        IconButton(
          splashColor: Colors.green,
          onPressed: (){
            print("play");
            final player = AudioPlayer();
            player.play(AssetSource(number.sounds));      
        }, 
        icon:Icon((Icons.play_arrow),color: Colors.white,size: 20,)
        )
         
        ],),
      );
  }
}