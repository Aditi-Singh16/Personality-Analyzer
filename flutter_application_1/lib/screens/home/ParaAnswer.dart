// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/test_result.dart';

class ParagraphAnswer extends StatefulWidget {
  const ParagraphAnswer({Key? key}) : super(key: key);

  @override
  State<ParagraphAnswer> createState() => _ParagraphAnswerState();
}

class _ParagraphAnswerState extends State<ParagraphAnswer> {

TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick Personality Test'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Question',
            style: TextStyle(
              fontSize: 30
            )
          ),
          TextFormField(
            decoration:InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelText: 'Add your Answer',
                labelStyle: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'EBGaramond'),
              ),
            minLines: 10,
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
          ElevatedButton(
            onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TestResult(
                            resultAns: _controller.text,
                          )),
                );
            },
            child: Text(
              'Whats my personality?',
            style: TextStyle(fontFamily: 'EBGaramond',fontSize: 25,color:Color.fromARGB(255, 255, 255, 255)),
       
            ),
          )
        ],
      )
    );
  }
}
