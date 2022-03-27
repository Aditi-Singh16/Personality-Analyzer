import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/desc.dart';

class TestResult extends StatefulWidget {
  const TestResult({required this.mbtiType, Key? key}) : super(key: key);

  final String mbtiType;

  @override
  State<TestResult> createState() => _TestResultState();
}

class _TestResultState extends State<TestResult> {
  final Map<String, String> letterType = {
    "I": "Introversion",
    "N": "Intuition",
    "T": "Thinking",
    "S": "Sensing",
    "E": "Extraversion",
    "F": "Feeling",
    "P": "Perceiving",
    "J": "Judging"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Results'),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Center(
                  child: Text('Your Personality type',
                      style: const TextStyle(fontSize: 30)),
                ),
                Center(
                  child: Text(
                    '${widget.mbtiType}',
                    style: const TextStyle(fontSize: 30)
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.mbtiType.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.purple[900],
                                radius: MediaQuery.of(context).size.width * 0.09,
                                child: Text(widget.mbtiType.split("")[index],
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 255, 255))),
                              ),
                              SizedBox(width: 20,),
                              Text(letterType[widget.mbtiType.split("")[index]]!,
                                  style: const TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.black
                                )
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                const Text(
                  'Know your charachteristics',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.16,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffac99fd),
                          Color(0xff6546fe),
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          DescConstant().mbtiRes[widget.mbtiType]['desc'],
                          style: TextStyle(fontSize: 17),
                        ))),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                const Text(
                  'Your Strength',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.16,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff46B83D),
                          Color(0xff2C6B24),
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          DescConstant().mbtiRes[widget.mbtiType]['strength'],
                          style: TextStyle(fontSize: 17),
                        ))),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                const Text(
                  'Potential Area of development',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.16,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xfff9624c),
                          Color(0xfff74c4d),
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                            DescConstant().mbtiRes[widget.mbtiType]['weakness'],
                            style: TextStyle(fontSize: 17)))),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                const Text(
                  'Career Choice',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.16,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff81cfff),
                          Color(0xff05a4ff),
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                            DescConstant().mbtiRes[widget.mbtiType]['career'],
                            style: TextStyle(fontSize: 17))))
              ],
            ),
          ),
        ));
  }
}
