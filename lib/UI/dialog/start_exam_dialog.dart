import 'package:driving_theory_b2/model/exam_questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/question.dart';

class StartExamDialog extends StatelessWidget {
  const StartExamDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =  MediaQuery.of(context).size.height;
    return Container(
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.center,
        child: Container(
            constraints: BoxConstraints.loose(const Size(double.infinity, 350)),
            padding: const EdgeInsets.all(15.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'BẮT ĐẦU LÀM BÀI',
                      style: TextStyle(fontSize: 20),
                    ),
                    GestureDetector(onTap: () => Navigator.of(context).pop(false),
                        child: const Icon(Icons.close, color: Colors.red,))
                  ],
                ),
                const SizedBox(height: 15),
                const Text(
                    'đề thi bằng lái hạng B2 gồm 35 câu hỏi làm bài trong thời gian 22 phút.',
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 15),
                const Text(
                    'Để vượt qua bài thi, bạn cần trả lời đúng 32/35 câu hỏi và không sai câu điểm liệt nào.',
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(10, 10, 10, 10),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Table(
                    children: const [
                      TableRow(children: [
                        Center(
                            child: Text('Tổng số\ncâu hỏi\n',
                                style: TextStyle(fontSize: 18))),
                        Center(
                            child: Text('Số câu hỏi\ncần đúng',
                                style: TextStyle(fontSize: 18))),
                        Center(
                            child: Text('Thời gian\nlàm bài',
                                style: TextStyle(fontSize: 18))),
                      ]),
                      TableRow(children: [
                        Center(
                          child: Text(
                            '35',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Center(
                          child: Text(
                            '32',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                        Center(
                          child: Text(
                            '22 Phút',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                        )
                      ])
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text(
                        'BẮT ĐẦU LÀM BÀI',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal),
                      )),
                )
              ],
            )),
      ),
    );
  }
}
