import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../model/question.dart';

class StorageApi {
  static Future<Map<int, String>> getImagesUrl600Question(
      {required List<Question> questions}) async {
    Map<int, String> urls = {};
    questions.forEach((question) async{
      String url = await getImageUrl(typeQuestion: question.type, idQuestion: question.id);
      urls[question.id] = url;
      print('$url');
    });

    Future.forEach(questions, (element) => 5).then((value) => 5);
    await urls;
    print('${urls.length}------------------------------------------hehe-');
    return urls;
  }

  static Future<String> getImageUrl(
      {required int typeQuestion, required int idQuestion}) async {

    String path = '600Questions/$typeQuestion/$idQuestion.png';
    //print(path);
    final ref = FirebaseStorage.instance.ref().child(path);
    final url = await ref.getDownloadURL();

    return url;
  }

  static Stream<String> getImageUrlStream(
      {required int typeQuestion, required int idQuestion}) {
    String path = '600Questions/$typeQuestion/$idQuestion.png';
    final ref = FirebaseStorage.instance.ref().child(path);
    return ref.getDownloadURL().asStream();
  }
}
