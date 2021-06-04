import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
    //print('Answer Choosen !');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What \'s your favorite color ',
      'Whats your favorite animal ?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              // first method
              // Text(questions.elementAt(0)),
              // 2nd method
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                // named function
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                // anninous function
                onPressed: () => print('Answer 2 chosen !'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  // ......
                  print('Answer 3 chosen ');
                },
              ),
            ],
          )),
    );
  }
}
