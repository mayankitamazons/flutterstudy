import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    //print('Answer Choosen !');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What \'s your favorite color ?',
      'Whats your favorite animal ?'
    ];
    // var questions = [
    //   {
    //     'questionText': 'What \'s your favorite color ?',
    //     'answer': ['Black', 'Blue', 'Gray', 'Red']
    //   },
    //   {
    //     'questionText': 'Whats your favorite animal ?',
    //     'answer': ['Rabbit', 'Cow', 'None', 'Camel']
    //   },
    //   {
    //     'questionText': 'What \'s your favorite Teacher ?',
    //     'answer': ['Dheeraj', 'Dheeraj', 'Dheeraj', 'Dheeraj']
    //   }
    // ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              // first method
              Text(questions.elementAt(0)),
              // 2nd method
              // Question(questions[_questionIndex]['questionText']),

              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              /*
              RaisedButton(
                child: Text('Answer 1'),
                // named function
                onPressed: _answerQuestion,
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
              */
            ],
          )),
    );
  }
}
