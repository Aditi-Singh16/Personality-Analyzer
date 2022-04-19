import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/ParaAnswer.dart';
import 'package:flutter_application_1/screens/home/detailed_test.dart';

class SelectChoice extends StatelessWidget {
  const SelectChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Take the test'
        )
      ),
      body:Column(
        children: [
          ElevatedButton(
            onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ParagraphAnswer()
                  ),
                );
            },
            child: Text(
              'Quick Test',
            style: TextStyle(fontFamily: 'EBGaramond',fontSize: 25,color:Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
           ElevatedButton(
            onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailedTest()
                  ),
                );
            },
            child: Text(
              'Detailed Test',
            style: TextStyle(fontFamily: 'EBGaramond',fontSize: 25,color:Color.fromARGB(255, 255, 255, 255)),
            ),
          )
        ],
      )
    );
  }
}
