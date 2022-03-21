import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key,this.name="Tejas",this.roll=29}) : super(key: key);
  final String name;
  final int roll;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.red,

        child:
        Padding( 
        padding: EdgeInsets.all(20.0)
        ,child:Text(
          '${this.name} --  ${this.roll}',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),)
       
      ),
    );
  }
}
