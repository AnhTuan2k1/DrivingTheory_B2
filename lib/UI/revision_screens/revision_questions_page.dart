import 'package:flutter/material.dart';

import '../../api/storage_api.dart';
import '../../model/exam_questions.dart';
import '../../model/question.dart';
import '../dialog/change_question_dialog.dart';
import '../widget/answer_cards.dart';
import '../widget/list_wheel_scroll_view_x.dart';

class RevisionQuestionPage extends StatefulWidget {
  const RevisionQuestionPage(
    this.examQuestions, {
    required this.questionType,
    Key? key,
  }) : super(key: key);
  final ExamQuestions examQuestions;
  final String questionType;

  @override
  State<RevisionQuestionPage> createState() => _RevisionQuestionPageState();
}

class _RevisionQuestionPageState extends State<RevisionQuestionPage> {
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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.examQuestions.name),
        ),
        body: Stack(children: [
          Column(children: [
            buildStateExamPage(),
            Expanded(
              child: PageView(
                  onPageChanged: (index) => wheelControler.animateToItem(index,
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
/*          Positioned(
            bottom: 100,
            right: 20,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.green,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                height: 40,
                width: 120,
                child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          ' ĐÁP ÁN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ))),
          ),*/
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
                            leading: Icon(
                              Icons.west_outlined,
                              color: Colors.deepPurpleAccent,
                            ),
                            title: FittedBox(
                                child: Text(
                              'Câu sau',
                              textAlign: TextAlign.center,
                            )),
                          )),
                    )),
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
                            title: FittedBox(
                                child: Text(
                              'Câu kế tiếp',
                              textAlign: TextAlign.center,
                            )),
                            trailing: Icon(
                              Icons.east_outlined,
                              color: Colors.deepPurpleAccent,
                            ),
                          )),
                    ))
              ],
            ),
          )
        ]));
  }

  handleChangeQuestion() async {
    int? x;
    await showDialog<int>(
            context: context,
            builder: (context) {
              return ChangeQuestionDialog(
                  questions: widget.examQuestions.questions,
                  submited: widget.examQuestions.submited);
            })
        .then((value) => {
              x = value ?? controller.page?.toInt(),
              wheelControler.jumpToItem(x ?? 0)
            });
  }

  buildStateExamPage() {
    return SizedBox(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
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
    );
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
                    blurRadius: 5.0, color: Colors.black, offset: Offset(1, 3))
              ] // Make rounded corner of border
              ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Câu ${question.id}:  ${question.content}',
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
              if (question.image != null) ...[
                Image.network(question.image ?? '')
              ] else
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                  child: getImage(question),
                )
            ],
          ),
        ));
  }

  buildAnswers(Question question) {
    return AnswerCards(
        submited: widget.examQuestions.submited,
        question: question,
        questionType: widget.questionType);
  }

  ShowAnswer(Question question, int id) {
    if (question.selectedAnswerId == id) {
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

  Widget getImage(Question question) {
    return FutureBuilder<String>(
      future: StorageApi.getImageUrl(
          typeQuestion: question.type, idQuestion: question.id),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox();
        } else if (snapshot.hasData) {
          return Image(image: NetworkImage(snapshot.data!));
        } else if (snapshot.hasError) {
          print(snapshot.error.toString());
          return const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
