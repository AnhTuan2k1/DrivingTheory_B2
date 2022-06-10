



import 'package:hive/hive.dart';

import '../../model/enum.dart';
import '../../model/question.dart';

class FactoryTypeQuestion{
  static TypeQuestions getTypeQuestions(QuestionType questionType){
    switch(questionType){
      case QuestionType.concept_rule:
        return ConceptRuleQuestion();
      case QuestionType.transport_business:
        return TransportBusiness();
      case QuestionType.culture_ethic:
        return CultureEthic();
      case QuestionType.driving_technique:
        return DrivingTechnique();
      case QuestionType.structure_repair:
        return StructureRepair();
      case QuestionType.traffic_signs:
        return TrafficSigns();
      case QuestionType.traffic_situations:
        return TrafficSituations();
      case QuestionType.none:
        return VitalQuestions();
      case QuestionType.wrong:
        return WrongQuestions();
    }
  }
}

abstract class TypeQuestions{
  String getPathImage();
  String getName();
  int getNumQuestion();
  int getWeight();
  int getVital();
  List<Question> createQuestion(List<Question> questions);
}

class ConceptRuleQuestion extends TypeQuestions{

  static final ConceptRuleQuestion _instance = ConceptRuleQuestion._privateConstructor();
  factory ConceptRuleQuestion() => _instance;
  ConceptRuleQuestion._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    return questions.where((element) => element.id <= 166).toList();
  }

  @override
  String getName() => 'KHÁI NIỆM VÀ QUY TẮC';

  @override
  int getNumQuestion() => 166;

  @override
  int getWeight() => 8 + 1;

  @override
  int getVital() => 45;

  @override
  String getPathImage() => 'assets/images/book.png';
}

class TransportBusiness extends TypeQuestions{

  static final TransportBusiness _instance = TransportBusiness._privateConstructor();
  factory TransportBusiness() => _instance;
  TransportBusiness._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    return questions.where((element) => 166 < element.id && element.id <= 192).toList();
  }

  @override
  String getName() => 'NGHIỆP VỤ VẬN TẢI';

  @override
  int getNumQuestion() => 192 - 166;

  @override
  int getWeight() => 1;

  @override
  int getVital() => 0;

  @override
  String getPathImage() => 'assets/images/truck.png';
}

class CultureEthic extends TypeQuestions{

  static final CultureEthic _instance = CultureEthic._privateConstructor();
  factory CultureEthic() => _instance;
  CultureEthic._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    return questions.where((element) => 192 < element.id && element.id <= 213).toList();
  }

  @override
  String getName() => 'VĂN HÓA VÀ ĐẠO ĐỨC LÁI XE';

  @override
  int getNumQuestion() => 213 - 192;

  @override
  int getWeight() => 1;

  @override
  int getVital() => 4;

  @override
  String getPathImage() => 'assets/images/brain.png';
}

class DrivingTechnique extends TypeQuestions{

  static final DrivingTechnique _instance = DrivingTechnique._privateConstructor();
  factory DrivingTechnique() => _instance;
  DrivingTechnique._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    return questions.where((element) => 213 < element.id && element.id <= 269).toList();
  }

  @override
  String getName() => 'KỸ THUẬT LÁI XE';

  @override
  int getNumQuestion() => 269 - 213;

  @override
  int getWeight() => 2;

  @override
  int getVital() => 11;

  @override
  String getPathImage() => 'assets/images/steering_wheel.png';
}

class StructureRepair extends TypeQuestions{

  static final StructureRepair _instance = StructureRepair._privateConstructor();
  factory StructureRepair() => _instance;
  StructureRepair._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    return questions.where((element) => 269 < element.id && element.id <= 304).toList();
  }

  @override
  String getName() => 'CẤU TẠO VÀ SỬA CHỮA';

  @override
  int getNumQuestion() => 304 - 269;

  @override
  int getWeight() => 1;

  @override
  int getVital() => 0;

  @override
  String getPathImage() => 'assets/images/maintenance.png';
}

class TrafficSigns extends TypeQuestions{

  static final TrafficSigns _instance = TrafficSigns._privateConstructor();
  factory TrafficSigns() => _instance;
  TrafficSigns._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    return questions.where((element) => 304 < element.id && element.id <= 486).toList();
  }

  @override
  String getName() => 'BIỂN BÁO ĐƯỜNG BỘ';

  @override
  int getNumQuestion() => 486 - 304;

  @override
  int getWeight() => 10;

  @override
  int getVital() => 0;

  @override
  String getPathImage() => 'assets/images/error.png';
}

class TrafficSituations extends TypeQuestions{

  static final TrafficSituations _instance = TrafficSituations._privateConstructor();
  factory TrafficSituations() => _instance;
  TrafficSituations._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    return questions.where((element) => 486 < element.id && element.id <= 600).toList();
  }

  @override
  String getName() => 'SA HÌNH';

  @override
  int getNumQuestion() => 600 - 486;

  @override
  int getWeight() => 10;

  @override
  int getVital() => 0;

  @override
  String getPathImage() => 'assets/images/bike_car.png';
}

class VitalQuestions extends TypeQuestions{

  static final VitalQuestions _instance = VitalQuestions._privateConstructor();
  factory VitalQuestions() => _instance;
  VitalQuestions._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    return questions.where((element) => element.vital).toList();
  }

  @override
  String getName() => '60 CÂU HỎI ĐIỂM LIỆT';

  @override
  int getNumQuestion() => 60;

  @override
  int getWeight() => 1;

  @override
  int getVital() => 0;

  @override
  String getPathImage() => 'assets/images/box-important.png';
}

class WrongQuestions extends TypeQuestions{

  static final WrongQuestions _instance = WrongQuestions._privateConstructor();
  factory WrongQuestions() => _instance;
  WrongQuestions._privateConstructor();

  @override
  List<Question> createQuestion(List<Question> questions) {
    var box = Hive.box<Question>('Question');
    box.values.forEach((element) {element.selectedAnswerId = null;});
    return box.values.toList();
  }

  @override
  String getName() => 'ÔN LẠI CÂU HỎI LÀM SAI';

  @override
  int getNumQuestion() {
    var box = Hive.box<Question>('Question');
    return box.length;
  }

  @override
  int getWeight() => 0;

  @override
  int getVital() {
    var box = Hive.box<Question>('Question');
    return box.values.where((question) => question.vital).length;
  }

  @override
  String getPathImage() => 'assets/images/delete_sign.png';
}