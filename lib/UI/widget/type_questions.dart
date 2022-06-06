import 'package:driving_theory_b2/UI/revision_screens/factory_type_questions.dart';
import 'package:flutter/material.dart';

const int numQuestions_B2 = 35;

class TypeQuestionsWidget extends StatelessWidget {
  const TypeQuestionsWidget(this.typeQuestions, {Key? key}) : super(key: key);
  final TypeQuestions typeQuestions;
  final double width = 130;
  final double height = 130;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(color: Colors.black12)),
      child: Row(
        children: [
          Image.asset(
            typeQuestions.getPathImage(),
            width: width,
            height: height,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            height: height,
            width: MediaQuery.of(context).size.width - width - 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  typeQuestions.getName(),
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text('Gồm ${typeQuestions.getNumQuestion()} câu hỏi'),
                    if(typeQuestions.getVital() != 0)
                    Expanded(
                      child: Text(
                        ' (${typeQuestions.getVital()} câu điểm liệt)',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '${typeQuestions.getWeight()} câu trong đề thi,  chiếm ${(typeQuestions.getWeight() * 10000 / numQuestions_B2).round() / 100}%',
                  style: const TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
