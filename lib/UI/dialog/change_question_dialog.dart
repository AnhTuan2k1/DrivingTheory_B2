
import 'package:flutter/material.dart';

import '../../model/question.dart';

class ChangeQuestionDialog extends StatelessWidget {
  const ChangeQuestionDialog({required this.submited,
    required this.questions,
    Key? key,
  }) : super(key: key);

  final List<Question> questions;
  final bool submited;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.fromLTRB(30, 150, 30, 150),
            color: Colors.white,
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 5,
                children: createList(context, questions))));
  }

  List<Container> createList(
      BuildContext context, List<Question> questions) {
    List<Container> list = <Container>[];
    for (int i = 0; i < questions.length; i++) {
      list.add(Container(
        color: getColors(questions[i]),
        child: OutlinedButton(
            onPressed: () => {Navigator.of(context).pop(i)},
            child: FittedBox(child: Text('${i + 1}', style: textStyle(questions[i])))),
      ));
    }

    return list;
  }

  TextStyle? textStyle(Question question) {
    Color? color;

    if(submited){
      color = Colors.white;
    }
    else {

    }
    return TextStyle(fontSize: 20 , color: color);
  }

  getColors(Question question) {
    if(submited){
      if(question.selectedAnswerId == null)
        return Colors.red;
      else if(question.selectedAnswerId == question.correctAnswerId)
        return Colors.green;
      else return Colors.red;
    }
    else {
      if(question.selectedAnswerId != null)
        return Colors.lightBlue[100];
    }
  }
}
