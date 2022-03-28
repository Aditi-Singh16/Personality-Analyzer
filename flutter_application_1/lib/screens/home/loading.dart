import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class LoadingWheel extends StatelessWidget {
  const LoadingWheel({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      // ignore: prefer_const_constructors
      child: SpinKitSquareCircle(
      color: Colors.blue[800],
      size: 50.0,
      ),
    );
  }
}