import 'package:belajar_flutter/sreens/home.dart';
import 'package:belajar_flutter/sreens/homeScreen.dart';
import 'package:belajar_flutter/sreens/welcomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext countext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    home: Loginpage(),
    );
  }
}