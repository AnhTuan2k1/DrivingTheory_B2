import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:driving_theory_b2/UI/exam_screens/exam_screen.dart';
import 'package:driving_theory_b2/UI/theory_screens/theory_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'UI/exam_screens/factory_exam_questions.dart';

import 'UI/revision_screens/revision_screen.dart';
import 'model/answer.dart';
import 'model/exam_questions.dart';
import 'model/question.dart';

void main() async{
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Hive.registerAdapter(AnswerAdapter());
  Hive.registerAdapter(QuestionAdapter());
  Hive.registerAdapter(ExamQuestionsAdapter());
  Hive.openBox<Question>('Question');
  TypeExamData.values.forEach((element) => Hive.openBox<ExamQuestions>(element.toString()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
      bottomNavigationBar: buildBottomNav(),
    );
  }

  buildBody() {
    switch (index) {
      case 0:
        return Theory();
      case 1:
        return Revision();
      case 2:
        return Exam();
      default:
        return Theory();
    }
  }

  buildBottomNav() {
    return BottomNavyBar(
      selectedIndex: index,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.import_contacts_outlined),
          title: Text('Lý Thuyết'),
          activeColor: Colors.green,
          inactiveColor: Colors.grey,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.article_outlined),
          title: Text('Ôn Luyện'),
          activeColor: Colors.green,
          inactiveColor: Colors.grey,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.history_edu_outlined),
          title: Text('Thi Thử'),
          activeColor: Colors.green,
          inactiveColor: Colors.grey,
          textAlign: TextAlign.center,
        ),
      ],
      onItemSelected: (index) => setState(() {
        this.index = index;
      }),
    );
  }
}
