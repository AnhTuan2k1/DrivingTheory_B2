// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_questions.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExamQuestionsAdapter extends TypeAdapter<ExamQuestions> {
  @override
  final int typeId = 3;

  @override
  ExamQuestions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExamQuestions(
      (fields[0] as List).cast<Question>(),
      fields[3] as String,
    )
      ..mark = fields[1] as double
      ..submited = fields[2] as bool
      ..result = fields[4] as bool
      ..correctQuestions = fields[5] as int
      ..wrongQuestions = fields[6] as int
      ..notSelectedQuestions = fields[7] as int;
  }

  @override
  void write(BinaryWriter writer, ExamQuestions obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.questions)
      ..writeByte(1)
      ..write(obj.mark)
      ..writeByte(2)
      ..write(obj.submited)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.result)
      ..writeByte(5)
      ..write(obj.correctQuestions)
      ..writeByte(6)
      ..write(obj.wrongQuestions)
      ..writeByte(7)
      ..write(obj.notSelectedQuestions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExamQuestionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
