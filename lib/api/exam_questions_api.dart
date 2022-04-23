
import 'dart:convert';

import 'package:flutter/material.dart';

import '../model/question.dart';

class QuestionApi {
  static Future<List<Question>> getQuestionsLocally(
      BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString("assets/600questions.json");
    final List body = jsonDecode(data);

    return body.map((e) => Question.fromJson(e)).toList();
  }
}