import 'package:flutter/material.dart';
import 'package:conditional_questions/conditional_questions.dart';
import 'package:flutter_application_1/screens/home/test_result.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'questions.dart';

class DetailedTest extends StatefulWidget {
  const DetailedTest({ Key? key }) : super(key: key);

  @override
  State<DetailedTest> createState() => _DetailedTestState();
}

class _DetailedTestState extends State<DetailedTest> {
  final AuthService _auth = AuthService();

  final _key = GlobalKey<QuestionFormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnare',
            style: const TextStyle(fontFamily: 'EBGaramond', fontSize: 30)),
        actions: <Widget>[
          FlatButton.icon(
            icon: const Icon(
              Icons.person,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: const Text('logout',
                style: TextStyle(
                    fontFamily: 'EBGaramond',
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255))),
            onPressed: () async {
              await _auth.signOut();
            },
          ),
        ],
      ),
      body: ConditionalQuestions(
        key: _key,
        children: questions(),
        trailing: [
          RaisedButton(
            color: const Color(0xff5fa8d3),
            splashColor: Colors.orangeAccent,
            onPressed: () async {
              String result = '';
              if (_key.currentState!.validate()) {
                print("validated!");
                _key.currentState?.getElementList().forEach((element) {
                  result = result + element.answer;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TestResult(
                            resultAns: result,
                          )),
                );
              }
            },
            child: const Text("Submit",
                style: TextStyle(
                    fontFamily: 'EBGaramond',
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255))),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
