import 'package:driving_theory_b2/UI/theory_screens/tricks/li_thuyet/screens/trick_li_thuyet_screen.dart';
import 'package:driving_theory_b2/UI/theory_screens/tricks/thuc_hanh/screens/thuc_hanh.dart';
import 'package:driving_theory_b2/UI/theory_screens/tricks/trick_item.dart';
import 'package:flutter/material.dart';

class TrickList extends StatelessWidget {
  const TrickList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TrickItem(
              title: 'Mẹo lí thuyết',
              imageName: 'book2.png',
              onPress: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TrickLiThuyet(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TrickItem(
              title: 'Mẹo Thực hành',
              imageName: 'car2.png',
              onPress: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TrickThucHanh(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
