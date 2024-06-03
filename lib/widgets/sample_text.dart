import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),

        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: SizedBox(
             width: double.infinity,
             child: CalcWidget(),
          ),
         
        )
        
      )

    );
  }
}

class CalcWidget extends StatefulWidget{
  const CalcWidget({super.key});
  @override
  CalcWidgetState createState() => CalcWidgetState();
}
class CalcWidgetState extends State<CalcWidget>{
  @override
  Widget build(BuildContext context){
    return const SimpleCalculator();
  }
}

