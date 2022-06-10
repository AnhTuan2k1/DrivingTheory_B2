import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../model/enum.dart';
import '../../model/question.dart';

class AnswerCards extends StatefulWidget {
  const AnswerCards(
      {required this.submited,
      required this.question,
      Key? key,
      required this.questionType})
      : super(key: key);
  final Question question;
  final bool submited;
  final String questionType;

  @override
  State<AnswerCards> createState() => _AnswerCardsState();
}

class _AnswerCardsState extends State<AnswerCards> {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[];
    list.add(SizedBox(
      height: 20,
    ));
    list.addAll((widget.question.answers.map(
      (e) => Container(
        padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
        child: Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: getColor(widget.question, e.id, round: true),
                  width: 1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: getColor(widget.question, e.id),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(4.0),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(
                      // width: 3.0,
                      color: Colors.greenAccent,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: Text(
                  e.id.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(e.content),
              trailing: ShowAnswer(widget.question, e.id),
              onTap: () {
                if (!widget.submited) {
                  setState(() {
                    widget.question.selectedAnswerId = e.id;
                  });
                }
                hiveUpdateWrongQuestion();
              },
            )),
      ),
    )));

    list.add(SizedBox(
      height: 100,
    ));

    return Column(children: list);
  }

  ShowAnswer(Question question, int id) {
    if (widget.submited) {
      if (question.correctAnswerId == id)
        return const Icon(Icons.check_circle, color: Colors.green);
      else
        return const Icon(Icons.dangerous, color: Colors.red);
    }
    else if(QuestionType.values.any((element) => element.toString() == widget.questionType)){
    if (question.selectedAnswerId == id) {
      if (question.correctAnswerId == id)
        return const Icon(Icons.check_circle, color: Colors.green);
      else
        return const Icon(Icons.dangerous, color: Colors.red);
    }
    }

  }

  getColor(Question question, identifier, {bool round = false}) {
    if (question.selectedAnswerId == null) {
      if (round) return Colors.black26;
      return Colors.white;
    } else if (question.selectedAnswerId == identifier) {
      if (round) return Theme.of(context).primaryColor;
      return Theme.of(context).secondaryHeaderColor;
    } else {
      if (round) return Colors.black26;
      return Colors.white;
    }
  }

  void hiveUpdateWrongQuestion() async{
    if(widget.questionType == QuestionType.values[QuestionType.values.length - 1].toString()){
      var box = Hive.box<Question>('Question');
     // print('update----------------------------okok 2---------------------------');
      if(widget.question.selectedAnswerId != null){
        if(widget.question.selectedAnswerId == widget.question.correctAnswerId){
          if(box.values.contains(widget.question)){
            int index = 0;
            for(;index < box.values.length; index++){
              if(box.getAt(index)!.id == widget.question.id){
                box.deleteAt(index);
              }
            }
          }
        }else{
          if(!box.values.contains(widget.question)){
           // print('update----------------------------okok 4---------------------------');
            await box.add(widget.question);
          }
        }
      }
    }
  }

}
