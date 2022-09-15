import 'package:flutter/material.dart';

void main() => runApp(const MyQuizApp());

class MyQuizApp extends StatefulWidget {
  const MyQuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyQuizAppState();
}

class MyQuizAppState extends State<MyQuizApp> {
  var questionIndex = 0;

  var questions = [
    "What's your favorite anime ?",
    "What's your favorite youtuber ?",
    "What's your favorite Animal ?",
  ];

  void clickAnswer() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My Quiz App"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: Text(
                    questions[questionIndex],
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: ElevatedButton(
                    onPressed: clickAnswer,
                    child: const Text(
                      "12",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "12",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "12",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "12",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
