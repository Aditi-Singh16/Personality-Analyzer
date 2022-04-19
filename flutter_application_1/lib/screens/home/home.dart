import 'package:flutter/material.dart';
import 'package:conditional_questions/conditional_questions.dart';
import 'package:flutter_application_1/backend/apicall.dart';
import 'package:flutter_application_1/screens/home/test_result.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'questions.dart';

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
      home: MyHomePage(title: 'Take the test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //SVC svc;
  _HomePageState() {}
  final AuthService _auth = AuthService();

  final _key = GlobalKey<QuestionFormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!,
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
