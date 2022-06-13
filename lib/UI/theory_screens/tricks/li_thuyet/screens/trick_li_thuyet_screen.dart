import 'package:driving_theory_b2/UI/theory_screens/tricks/li_thuyet/models/lithuyet.dart';
import 'package:driving_theory_b2/UI/theory_screens/tricks/li_thuyet/screens/li_thuyet_item.dart';
import 'package:driving_theory_b2/UI/theory_screens/tricks/li_thuyet/screens/li_thuyet_item_detail.dart';
import 'package:flutter/material.dart';

class TrickLiThuyet extends StatelessWidget {
  const TrickLiThuyet({Key? key}) : super(key: key);

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
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              meolithuyet.length,
              (index) => TrickLiThuyetItem(
                title: meolithuyet[index].name,
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TrickLiThuyetItemDetail(
                        title: meolithuyet[index].name,
                        trick: meolithuyet[index].trick,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
