

import 'dart:math';

import 'package:driving_theory_b2/model/question.dart';

class FactoryExamData{

  static ExamData getExamData({required TypeExamData typeExamData}){
    switch(typeExamData){
      case TypeExamData.ExamData1:
        return ExamData1();
      case TypeExamData.ExamData2:
        return ExamData2();
      case TypeExamData.ExamData3:
        return ExamData3();
      case TypeExamData.ExamData4:
        return ExamData4();
      case TypeExamData.ExamData5:
        return ExamData5();
      case TypeExamData.ExamData6:
        return ExamData6();
      case TypeExamData.ExamData7:
        return ExamData7();
      case TypeExamData.ExamData8:
        return ExamData8();
      case TypeExamData.ExamData9:
        return ExamData9();
      case TypeExamData.ExamData10:
        return ExamData10();
      case TypeExamData.ExamData11:
        return ExamData11();
      case TypeExamData.ExamData12:
        return ExamData12();
      case TypeExamData.RandomExamData:
        return RandomExamData();
    }
  }
}

abstract class ExamData{
  String getTitle();
  List<Question> createQuestions(List<Question> questions);
}

enum TypeExamData{
  RandomExamData,
  ExamData1,
  ExamData2,
  ExamData3,
  ExamData4,
  ExamData5,
  ExamData6,
  ExamData7,
  ExamData8,
  ExamData9,
  ExamData10,
  ExamData11,
  ExamData12
}

class RandomExamData extends ExamData{
  List<int> vitalQuestion = <int>[
    17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
    27, 28, 29, 30, 33, 35, 36, 37, 40, 43,
    45, 46, 47, 48, 49, 50, 51, 52, 53, 84,
    91, 99, 101, 109, 112, 114, 118, 119,
    143, 145, 147, 150, 153, 154, 161, 199,
    200, 210, 211, 214, 221, 227, 231, 242,
    245, 248, 258, 260, 261, 262
  ];

  @override
  String getTitle() {
    return 'Đề thi thử ngẫu nhiên';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[];
    Random random = Random();

    // 8 câu hỏi về khái niệm và quy tắc giao thông đường bộ
    while(data.length < 8){
      int x = random.nextInt(166) + 1;
      if(!data.contains(x) && !vitalQuestion.contains(x))
        data.add(x);
    }
    // 1 Câu hỏi về quy định về tốc độ, khoảng cách
    while(data.length < 9){
      int x = random.nextInt(139 - 123) + 124;
      if(!data.contains(x) && !vitalQuestion.contains(x))
        data.add(x);
    }
    // 1 câu hỏi về nghiệp vụ vận tải
    while(data.length < 10){
      int x = random.nextInt(192 - 166) + 167;
      if(!data.contains(x) && !vitalQuestion.contains(x))
        data.add(x);
    }
    //1 câu hỏi về văn hóa & đạo đức người lái xe
    while(data.length < 11){
      int x = random.nextInt(213 - 192) + 193;
      if(!data.contains(x) && !vitalQuestion.contains(x))
        data.add(x);
    }
    //2 câu hỏi về kỹ thuật lái xe
    while(data.length < 13){
      int x = random.nextInt(269 - 213) + 214;
      if(!data.contains(x) && !vitalQuestion.contains(x))
        data.add(x);
    }
    //1 câu hỏi về cấu tạo sữa chữa
    while(data.length < 14){
      int x = random.nextInt(304 - 270) + 270;
      if(!data.contains(x) && !vitalQuestion.contains(x))
        data.add(x);
    }
    //10 câu hỏi biển báo
    while(data.length < 24){
      int x = random.nextInt(486 - 304) + 305;
      if(!data.contains(x) && !vitalQuestion.contains(x))
        data.add(x);
    }
    //10 câu hỏi sa hình
    while(data.length < 35){
      int x = random.nextInt(600 - 486) + 487;
      if(!data.contains(x) && !vitalQuestion.contains(x))
        data.add(x);
    }
    //1 câu hỏi điểm liệt
    int index = random.nextInt(13);
    data.insert(index, vitalQuestion[random.nextInt(60) + 1]);
    //print(data);
    //print(vitalQuestion.length);
    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData1 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 1';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];
    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData2 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 2';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      401, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData3 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 3';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData4 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 4';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData5 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 5';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData6 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 6';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData7 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 7';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData8 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 8';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData9 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 9';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData10 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 10';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData11 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 11';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}

class ExamData12 extends ExamData{
  @override
  String getTitle() {
    return 'Đề thi thử số 12';
  }

  @override
  List<Question> createQuestions(List<Question> questions) {
    List<int> data = <int>[
      415, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313,
      314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326,
      327, 328, 329, 330, 331, 332, 355, 356, 357
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}