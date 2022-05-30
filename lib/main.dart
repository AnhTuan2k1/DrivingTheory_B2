import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:driving_theory_b2/UI/exam_screens/exam_screen.dart';
import 'package:driving_theory_b2/UI/theory_screens/theory_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'UI/revision_screens/revision_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    switch(index){
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
          title: Text('Luyện Tập'),
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
