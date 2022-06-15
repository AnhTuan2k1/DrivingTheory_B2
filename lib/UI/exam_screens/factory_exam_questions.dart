

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
    print(data);
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
      71, 117, 36, 164, 131, 60, 115, 79, 67, 129,
      170, 212, 250, 228, 287, 385, 407, 455, 449,
      320, 334, 353, 421, 479, 406, 541, 557, 504,
      552, 559, 576, 590, 513, 530, 535, 491
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
      13, 164, 39, 160, 90, 162, 137, 31, 211, 135,
      181, 195, 230, 223, 294, 404, 325, 336, 319,
      420, 338, 389, 463, 326, 358, 548, 505, 555,
      501, 552, 580, 541, 558, 584, 546, 514
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
      59, 151, 150, 8, 88, 102, 7, 72, 92, 139, 186,
      202, 249, 229, 283, 460, 451, 311, 434, 305, 432,
      399, 322, 334, 415, 579, 488, 513, 533, 544, 546,
      532, 506, 519, 593, 599
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
      13, 9, 56, 60, 77, 111, 157, 86, 125, 172,
      208, 36, 249, 220, 287, 455, 411, 319, 398,
      457, 470, 363, 358, 413, 325, 539, 560, 526,
      572, 532, 559, 493, 515, 564, 561, 587
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
      73, 27, 13, 110, 79, 44, 141, 117, 142, 128,
      184, 197, 265, 244, 295, 382, 365, 449, 305,
      417, 332, 312, 386, 318, 396, 494, 591, 501,
      582, 491, 516, 547, 504, 555, 535, 541
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
      141, 85, 80, 93, 69, 73, 116, 2, 137, 175,
      213, 263, 22, 218, 274, 460, 389, 339, 307,
      476, 364, 337, 485, 383, 465, 561, 499, 531,
      577, 526, 527, 539, 574, 514, 556, 572
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
      79, 82, 146, 73, 108, 9, 8, 128, 153, 133,
      184, 196, 247, 263, 300, 475, 380, 470, 455,
      437, 357, 415, 382, 404, 358, 530, 546, 514,
      558, 525, 499, 556, 518, 550, 598, 510
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
      148, 65, 151, 87, 85, 96, 51, 41, 67, 131,
      188, 202, 251, 218, 279, 380, 468, 458, 432,
      362, 421, 315, 400, 324, 346, 580, 531, 574,
      532, 598, 579, 550, 597, 495, 564, 561
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
      15, 93, 152, 116, 135, 83, 104, 148, 27, 132,
      177, 207, 235, 247, 294, 331, 393, 423, 446,
      407, 323, 424, 309, 320, 404, 507, 498, 582,
      512, 499, 492, 528, 548, 594, 522, 554
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
      9, 110, 67, 61, 71, 39, 128, 125, 137, 183,
      205, 47, 256, 230, 300, 472, 394, 439, 340,
      390, 403, 372, 381, 469, 461, 550, 544, 502,
      500, 590, 497, 547, 575, 598, 509, 524
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
      16, 135, 4, 113, 117, 129, 72, 108, 261, 127,
      170, 209, 243, 254, 289, 386, 321, 384, 397,
      305, 354, 345, 316, 431, 486, 561, 489, 491,
      525, 573, 521, 542, 576, 570, 550, 532
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
      59, 82, 94, 29, 121, 12, 132, 54, 73, 131,
      179, 209, 238, 250, 276, 417, 336, 444, 348,
      401, 448, 439, 366, 324, 395, 591, 557, 552,
      561, 487, 524, 555, 559, 513, 579, 569
    ];

    return questions.where((element) => data.contains(element.id)).toList();
  }
}