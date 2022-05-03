import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {required this.result,
      required this.correctQuestions,
      required this.wrongQuestions,
      required this.notSelectedQuestions,
      Key? key})
      : super(key: key);

  final bool result;
  final int correctQuestions;
  final int wrongQuestions;
  final int notSelectedQuestions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: MediaQuery.of(context).size.height * 0.4,
                image: const AssetImage('assets/images/drive.png'),
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 50),
              result
                  ? Column(children: const [
                      Text('Chúc mừng!👏',
                          style: TextStyle(color: Colors.green, fontSize: 25)),
                      SizedBox(height: 10),
                      FittedBox(
                          child: Text('Bạn đã đậu',
                              style: TextStyle(fontSize: 25))),
                    ])
                  : Column(children: const [
                      Text(
                        'Thôi xong! 🤧',
                        style: TextStyle(color: Colors.red, fontSize: 25),
                      ),
                      SizedBox(height: 10),
                      FittedBox(
                          child: Text('Rớt rồi, ôn luyện nhiều zoôoôoo',
                              style: TextStyle(fontSize: 25)))
                    ]),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Số câu đúng: ', style: TextStyle(fontSize: 20)),
                  Text(correctQuestions.toString(),
                      style:
                          const TextStyle(color: Colors.green, fontSize: 20)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Số câu sai: ', style: TextStyle(fontSize: 20)),
                  Text(wrongQuestions.toString(),
                      style: const TextStyle(color: Colors.red, fontSize: 20)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Số Câu chưa trả lời: ',
                      style: TextStyle(fontSize: 20)),
                  Text(notSelectedQuestions.toString(),
                      style:
                          const TextStyle(color: Colors.orange, fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
