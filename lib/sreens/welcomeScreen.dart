import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children:[
            Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height/ 1.6,
              decoration:BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height / 1.6,
              decoration:BoxDecoration(
                color: Color(0xFF674AEF),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
              )
            )
          ],),
      ),
    );
  }
}