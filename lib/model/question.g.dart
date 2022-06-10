// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionAdapter extends TypeAdapter<Question> {
  @override
  final int typeId = 2;

  @override
  Question read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Question(
      fields[0] as int,
      fields[1] as int,
      fields[2] as bool,
      fields[3] as String,
      fields[4] as int,
      (fields[5] as List).cast<Answer>(),
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Question obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.vital)
      ..writeByte(3)
      ..write(obj.content)
      ..writeByte(4)
      ..write(obj.correctAnswerId)
      ..writeByte(5)
      ..write(obj.answers)
      ..writeByte(6)
      ..write(obj.explanation)
      ..writeByte(7)
      ..write(obj.image)
      ..writeByte(8)
      ..write(obj.selectedAnswerId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      json['id'] as int,
      json['type'] as int,
      json['vital'] as bool,
      json['content'] as String,
      json['correctAnswerId'] as int,
      (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['explanation'] as String?,
      json['image'] as String?,
      json['selectedAnswerId'] as int?,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'vital': instance.vital,
      'content': instance.content,
      'correctAnswerId': instance.correctAnswerId,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
      'explanation': instance.explanation,
      'image': instance.image,
      'selectedAnswerId': instance.selectedAnswerId,
    };
