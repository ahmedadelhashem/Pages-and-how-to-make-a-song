import 'package:flutter/material.dart';
import 'package:twoproject/Screen/homepage.dart';

void main(){
  runApp(onepage());
}
class onepage extends StatelessWidget {
  const onepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}
