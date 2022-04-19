import 'package:flutter/material.dart';
import 'package:conditional_questions/conditional_questions.dart';
import 'package:flutter_application_1/screens/home/Choice.dart';


var lst = [];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        shadowColor: Color.fromARGB(255, 216, 235, 49),
        hoverColor: Color.fromARGB(255, 233, 185, 27),
        fontFamily: 'EBGaramond',
        scaffoldBackgroundColor: const Color(0xffdfe7fd),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff5fa8d3),
        ),
      ),
      home: SelectChoice(),
    );
  }
}

