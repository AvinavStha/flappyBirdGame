import 'package:flutter/material.dart';

class MyBarrier2 extends StatelessWidget {
  final size;
  final String position;

  const MyBarrier2({this.size,this.position});

  @override
  Widget build(BuildContext context) {

    if(position=="bot"){return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/bar.bng2.png"))),
      height: size,
      width: 100,


    );}
    else{
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/bar.bng2.png"))),
        height: size,
        width: 100,


      );}

  }
}
