import 'package:driving_theory_b2/UI/exam_screens/result_page.dart';
import 'package:driving_theory_b2/UI/widget/list_wheel_scroll_view_x.dart';
import 'package:driving_theory_b2/UI/widget/timer_progress.dart';
import 'package:driving_theory_b2/model/exam_questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/timer_bloc/ticker.dart';
import '../../bloc/timer_bloc/timer_bloc.dart';
import '../../model/question.dart';
import '../dialog/change_question_dialog.dart';
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
  late PageController controller;
  bool built = false;

  late FixedExtentScrollController wheelControler;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    wheelControler.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
    wheelControler = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    Widget w = WillPopScope(
      onWillPop: () => buildStopExamDialog(),
      child: BlocProvider(
        create: (context) => TimerBloc(ticker: Ticker()),
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.examQuestions.name),
              actions: [
                Builder(builder: (context) {
                  final TimerBloc timerBloc =
                  BlocProvider.of<TimerBloc>(context);
                  return BlocBuilder<TimerBloc, TimerState>(
                    bloc: timerBloc,
                    buildWhen: (prev, state) =>
                    prev.runtimeType != state.runtimeType,
                    builder: (context, state) {
                      return !widget.examQuestions.submited
                          ? TextButton(
                        onPressed: () {
                          handleSubmittingButtonExam(context);
                        },
                        child: const Text(
                          "Nộp Bài",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                          : TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Đã Nộp",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  );
                }),
              ],
            ),
            body: Stack(
                children:[
                  Column(
                      children: [
                        buildStateExamPage(),
                        Expanded(
                          child: PageView(
                              onPageChanged: (index) => wheelControler.animateToItem(
                                  index,
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.easeInOut),
                              controller: controller,
                              children: widget.examQuestions.questions
                                  .map(
                                    (question) => SingleChildScrollView(
                                  child: Column(children: buildQuestion(question)),
                                ),
                              )
                                  .toList()),
                        ),
                      ]),
                  Positioned(
                    bottom: 30.0,
                    left: 20,
                    right: 20,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 9,
                            child: Card(
                              child: OutlinedButton(
                                  onPressed: () => controller.previousPage(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeInCubic),
                                  child: const ListTile(
                                    leading: Icon(Icons.west_outlined, color: Colors.deepPurpleAccent,),
                                    title: FittedBox(child: Text('Câu sau', textAlign: TextAlign.center,)),)),
                            )
                        ),
                        Expanded(
                          flex: 10,
                            child: Card(
                              margin: const EdgeInsets.only(left: 10.0),
                              child: OutlinedButton(
                                  onPressed: () => controller.nextPage(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeInCubic),
                                  child: const ListTile(
                                    title: FittedBox(child: Text('Câu kế tiếp', textAlign: TextAlign.center,)),
                                    trailing: Icon(Icons.east_outlined, color: Colors.deepPurpleAccent,),
                                  )),
                            )
                        )
                      ],
                    ),
                  )

                ]
            )),
      ),
    );

    built = true;
    return w;
  }

  buildStateExamPage() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: SizedBox(
          height: 70,
          child: GestureDetector(
            onTap: () => handleChangeQuestion(),
            child: ListWheelScrollViewX(
              controller: wheelControler,
              scrollDirection: Axis.horizontal,
              itemExtent: 70,
              perspective: 0.004,
              onSelectedItemChanged: (index) {
                controller.jumpToPage(index);
              },
              physics: const BouncingScrollPhysics(),
              children: widget.examQuestions.questions
                  .map((question) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    //color: Colors.cyanAccent,
                    border: Border.all(color: Colors.blueAccent)),
                width: 70,
                height: 70,
                margin: const EdgeInsets.fromLTRB(1.0, 15.0, 1.0, 15.0),
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Text(
                    (widget.examQuestions.questions.indexOf(question) + 1)
                        .toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ))
                  .toList(),
            ),
          ),
        ),
      ),
      Builder(
        builder: (context) {
          final TimerBloc timerBloc = BlocProvider.of<TimerBloc>(context);
          return BlocListener(
            bloc: timerBloc,
            listenWhen: (prev, state) => prev.runtimeType != state.runtimeType,
            listener: (context, state) {
              if (state is TimerRunComplete) handleSubmittingExam();
            },
            child: TimerProgress(),
          );
        },
      ),
    ]);
  }

  buildQuestion(Question question) {
    List<Widget> list = <Widget>[];
    list.add(Column(children: [
      Card(
          elevation: 0.0,
          color: Colors.white,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.black,
                      offset: Offset(1, 3))
                ] // Make rounded corner of border
            ),
            child: Text(
              'Câu ${widget.examQuestions.questions.indexOf(question) + 1}:  ${question.content}',
              style: TextStyle(fontSize: 15),
            ),
          )),
      if (question.image != null) ...[Image.network(question.image ?? '')],
    ]));

    list.add(SizedBox(
      height: 20,
    ));

    list.addAll((question.answers.map(
          (e) => Container(
        padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
        child: Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: getColor(question, e.id, round: true), width: 1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: getColor(question, e.id),
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
              trailing: ShowAnswer(question, e.id),
              onTap: () {
                if (!widget.examQuestions.submited) {
                  setState(() {
                    question.selectedAnswerId = e.id;
                  });
                }
              },
            )),
      ),
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

  handleChangeQuestion() async {
    int? x;
    await showDialog<int>(
        context: context,
        builder: (context) {
          return ChangeQuestionDialog(questions: widget.examQuestions.questions, submited: widget.examQuestions.submited);
        }).then((value) => {
      x = value ?? controller.page?.toInt(),
      wheelControler.jumpToItem(x ?? 0)
    });
  }

  handleSubmittingButtonExam(BuildContext buildContext) async {
    await showDialog<bool>(
        context: context,
        builder: (context) {
          return const SubmitExamDialog();
        }).then((value) => {
      if (value != null)
        {
          if (value)
            {
              buildContext.read<TimerBloc>().add(const TimerPaused()),
              handleSubmittingExam()
            }
        }
    });
  }

  handleSubmittingExam() {
    setState(() {
      widget.examQuestions.makeMark();
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultPage(
              result: widget.examQuestions.result,
              correctQuestions: widget.examQuestions.correctQuestions,
              wrongQuestions: widget.examQuestions.wrongQuestions,
              notSelectedQuestions:
              widget.examQuestions.notSelectedQuestions,
            )));
  }
}
