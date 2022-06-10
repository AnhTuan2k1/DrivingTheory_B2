import 'package:driving_theory_b2/UI/exam_screens/result_page.dart';
import 'package:driving_theory_b2/UI/widget/answer_cards.dart';
import 'package:driving_theory_b2/UI/widget/list_wheel_scroll_view_x.dart';
import 'package:driving_theory_b2/UI/widget/timer_progress.dart';
import 'package:driving_theory_b2/api/storage_api.dart';
import 'package:driving_theory_b2/model/exam_questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../bloc/timer_bloc/ticker.dart';
import '../../bloc/timer_bloc/timer_bloc.dart';
import '../../model/question.dart';
import '../dialog/change_question_dialog.dart';
import '../dialog/stop_exam_dialog.dart';
import '../dialog/submit_exam_dialog.dart';
import 'factory_exam_questions.dart';

class ExamQuestionPage extends StatefulWidget {
  const ExamQuestionPage({required this.examQuestions, required this.typeExamData, re, Key? key})
      : super(key: key);
  final ExamQuestions examQuestions;
  final String typeExamData;

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
                                  child: Column(
                                    children: [
                                      buildQuestion(question),
                                      buildAnswers(question),
                                    ],
                                  ),
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
                              shadowColor: Colors.white10,
                              color: Colors.transparent,
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
                              shadowColor: Colors.white10,
                              color: Colors.transparent,
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
          if(widget.examQuestions.submited) timerBloc.pause();
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

  Widget buildQuestion(Question question) {
    return Card(
        elevation: 0.0,
        color: Colors.white,
        child: Container(
          width: double.infinity,
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Câu ${widget.examQuestions.questions.indexOf(question) + 1}:  ${question.content}',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              if (question.image != null) ...[Image.network(question.image ?? '')]
              else Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                child: getImage(question),
              )
            ],
          ),
        ));
  }

  buildAnswers(Question question) {
    return AnswerCards(submited: widget.examQuestions.submited, question: question);
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
      hiveSave();
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

  Widget getImage(Question question) {
    return FutureBuilder<String>(
      future: StorageApi.getImageUrl(
          typeQuestion: question.type,
          idQuestion: question.id),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          print('-------------------------------ko ngon--1--');
          return const SizedBox();
        } else if (snapshot.hasData) {
          print('------------------------------ok ngon------------');
          return Image(image: NetworkImage(snapshot.data!));
        } else if (snapshot.hasError) {
          print('-------------------------------ko ngon---2-');
          print(snapshot.error.toString());
          return const SizedBox();
        } else {
          print('-------------------------------ko ngon--3--');
          return const SizedBox();
        }
      },
    );
  }

  void hiveSave() {
    if(widget.typeExamData == TypeExamData.RandomExamData.toString()) return;
   /* var lazyExamQuestionsBox = await Hive.openLazyBox<ExamQuestions>(widget.typeExamData);
    await lazyExamQuestionsBox.add(widget.examQuestions);
    await lazyExamQuestionsBox.close();*/

    var box = Hive.box<ExamQuestions>(widget.typeExamData);
    box.add(widget.examQuestions);
  }

}
