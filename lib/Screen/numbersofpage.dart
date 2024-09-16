import 'package:flutter/material.dart';
import 'package:twoproject/Components/item.dart';
import 'package:twoproject/models/number.dart';

class numberpage extends StatelessWidget {
   numberpage({super.key});
  final List<Number>numbers=const[
    Number(
      sounds: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png', jpname: 'ichi', enname: 'one'),
    Number(
      sounds: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png', jpname: 'Ni', enname: 'two'),
    Number(
      sounds: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png', jpname: 'San', enname: 'three'),
    Number(
      sounds: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png', jpname: 'Shi', enname: 'four'),
    Number(
      sounds: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png', jpname: 'Go', enname: 'five'),
    Number(
      sounds: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_six.png', jpname: 'Roku', enname: 'six'),
    Number(
      sounds: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_seven.png', jpname: 'Sebun', enname: 'seven'),
    Number(
      sounds: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_eight.png', jpname: 'hachi', enname: 'eight'),
    Number(
      sounds: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_nine.png', jpname: 'kyu', enname: 'nine'),
     Number(
      sounds: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png', jpname: 'kyu', enname: 'nine'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown,title: Text('Numbers'),),
      body:ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,index){
          return Item(number: numbers[index]);
      })
    );
  }
  //solve 1
  // ListView(children:getlist(numbers))
  // List<Widget> getlist(List<Number>numbers){
  //   List<Widget>itemlist=[];
  //   for(int i=0;i<numbers.length;i++){
  //     itemlist.add(Item(number: numbers[i]));
  //   }
  //   return itemlist;
  // }
}

/* class num extends StatelessWidget {
 num({this.text1,this.text2,this.image});
String? text1;
String?  text2;
Image? image;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: Colors.amber,
        child: Row(
          
          children: [
         Container(color: Color(0xffFFF6DC),child:image),
         SizedBox(width: 10,),
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
          Text(text1!,style: TextStyle(fontSize: 18,color: Colors.white),),
          Text(text2!,style: TextStyle(fontSize: 18,color: Colors.white))
         ],),
         SizedBox(width: 240,),
         Icon(Icons.play_arrow,color: Colors.white,size: 30,)
        ],),
      );
  }
}
 */
