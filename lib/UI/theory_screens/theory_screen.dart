import 'package:driving_theory_b2/UI/theory_screens/taplo/screens/taplo_list_screen.dart';
import 'package:driving_theory_b2/UI/theory_screens/theory_item_card.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/screens/traffic_sign_list.dart';
import 'package:driving_theory_b2/UI/theory_screens/tricks/tricks_list.dart';

import 'package:flutter/material.dart';

class Theory extends StatelessWidget {
  const Theory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TheoryItemCard(
              imageName: 'trafficsign.png',
              description: 'Các biển báo',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TrafficSignList(),
                  ),
                );
              },
            ),
            TheoryItemCard(
              imageName: 'experiences.png',
              description: 'Đèn cảnh báo ô tô',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TapLolist(),
                  ),
                );
              },
            ),
            const TrickList(),
          ],
        ),
      )
    );
  }
}
