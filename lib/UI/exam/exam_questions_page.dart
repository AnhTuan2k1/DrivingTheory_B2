import 'package:driving_theory_b2/UI/widget/timer_progress.dart';
import 'package:driving_theory_b2/model/exam_questions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/timer_bloc/ticker.dart';
import '../../bloc/timer_bloc/timer_bloc.dart';
import '../../model/question.dart';
import '../dialog/stop_exam_dialog.dart';
import '../dialog/submit_exam_dialog.dart';

class ExamQuestionPage extends StatefulWidget {
  const ExamQuestionPage({required this.examQuestions, Key? key})
      : super(key: key);
  final ExamQuestions examQuestions;

  @override
  State<ExamQuestionPage> createState() => _ExamQuestionPageState();
}

class _ExamQuestionPageState extends State<ExamQuestionPage> {
  PageController controller = PageController();
  bool built = false;

  @override
  Widget build(BuildContext context) {
    Widget w = WillPopScope(
      onWillPop: () => buildStopExamDialog(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("de thiiiii"),
            actions: [
              TextButton(
                onPressed: () {handleSubmittingExam();},
                child: Text("Nộp Bài", style: TextStyle(color: Colors.white),),
              )
            ],
          ),
          body: Container(
            color: Colors.white,
            child: Column(
                children: [
                  buildStateExamPage(),
                  Expanded(
                    child: PageView(
                        controller: controller,
                        children: widget.examQuestions.questions
                            .map(
                              (question) => SingleChildScrollView(
                            child: Column(children: buildQuestion(question)),
                          ),
                        )
                            .toList()),
                  ),
                ]
            ),
          )),
    );

    built = true;
    return w;
  }

  buildStateExamPage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Expanded(child: Center(child: Text('chọn câu hỏi'))),
        BlocProvider(
          create: (context) => TimerBloc(ticker: Ticker()),
          child: Builder(
            builder: (context) {
              final TimerBloc timerBloc = BlocProvider.of<TimerBloc>(context);
              return BlocListener(
                bloc:timerBloc,
                listenWhen: (prev, state) => prev.runtimeType != state.runtimeType,
                listener: (context, state) {
                  handleSubmittingExam();
                },
                child:  TimerText(),
              );
            },
          ),
        ),
      ]
    );

  }

  buildQuestion(Question question) {
    List<Widget> list = <Widget>[];
    list.add(Card(
        elevation: 0.0,
        color: Colors.white,
        child: ListTile(
          title: Text(
              'Câu ${widget.examQuestions.questions.indexOf(question) + 1}:  ${question.content}'),
        )));

    if (question.image != null) list.add(Image.network(question.image ?? ''));

    list.addAll((question.answers.map(
      (e) => Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: getColor(question, e.id, round: true), width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          color: getColor(question, e.id),
          child: ListTile(
            title: Text('${e.id}. ${e.content}'),
            trailing: ShowAnswer(question, e.id),
            onTap: () {
              if (!widget.examQuestions.submited) {
                setState(() {
                  question.selectedAnswerId = e.id;
                });
              }
            },
          )),
    )));

    return list;
  }

  ShowAnswer(Question question, int id) {
    if (widget.examQuestions.submited) {
      if (question.correctAnswerId == id)
        return const Icon(Icons.check_circle, color: Colors.green);
      else
        return const Icon(Icons.dangerous, color: Colors.red);
    }
  }

  getColor(Question question, identifier, {bool round = false}) {
    if (question.selectedAnswerId == null) {
      return Colors.white;
    } else if (question.selectedAnswerId == identifier) {
      if (round) return Theme.of(context).primaryColor;
      return Theme.of(context).secondaryHeaderColor;
    } else {
      return Colors.white;
    }
  }

  Future<bool> buildStopExamDialog() async {
    if (widget.examQuestions.submited) return Future.value(true);
    final value = await showDialog<bool>(
        context: context,
        builder: (context) {
          return const AlertStopExamDialog();
        });
    if (value != null)
      return Future.value(value);
    else
      return Future.value(false);
  }

  handleSubmittingExam() async{
    await showDialog<bool>(
        context: context,
        builder: (context) {
          return const SubmitExamDialog();
        }).then((value) => {
      if(value != null){
        if(value) {
          setState(() {
            widget.examQuestions.makeMark();
          })
        }
      }
    });
  }
}
