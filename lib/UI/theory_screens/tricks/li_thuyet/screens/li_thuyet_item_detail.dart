import 'package:driving_theory_b2/UI/theory_screens/tricks/li_thuyet/models/lithuyet.dart';
import 'package:flutter/material.dart';

import '../../thuc_hanh/models/thuchanh.dart';

class TrickLiThuyetItemDetail extends StatelessWidget {
  const TrickLiThuyetItemDetail({
    Key? key,
    required this.title,
    required this.trick,
  }) : super(key: key);

  final String title;
  final Trick trick;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mẹo lí thuyết',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.green,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: texts.tieude,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                trick.meo1 +
                    '\n\n' +
                    trick.meo2 +
                    '\n\n' +
                    trick.meo3 +
                    '\n\n' +
                    trick.meo4 +
                    '\n\n' +
                    trick.meo5 +
                    '\n\n' +
                    trick.meo6 +
                    '\n\n' +
                    trick.meo7 +
                    '\n\n' +
                    trick.meo8 +
                    '\n\n' +
                    trick.meo9 +
                    '\n\n' +
                    trick.meo10 +
                    '\n\n' +
                    trick.meo11 +
                    '\n\n' +
                    trick.meo12 +
                    '\n\n',
                style: texts.noidung,
              ),
            )
          ],
        ),
      ),
    );
  }
}
