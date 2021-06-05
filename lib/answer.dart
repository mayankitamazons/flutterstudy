import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback SelectHadler;
  Answer(this.SelectHadler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('Answer 1'),
        onPressed: SelectHadler,
        color: Colors.blue,
      ),
    );
  }
}
