import 'package:driving_theory_b2/UI/theory_screens/taplo/models/taplo.dart';
import 'package:driving_theory_b2/UI/theory_screens/taplo/screens/taplo_item.dart';
import 'package:driving_theory_b2/UI/theory_screens/taplo/screens/taplo_item_detail.dart';
import 'package:flutter/material.dart';

class TapLolist extends StatelessWidget {
  const TapLolist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
              listtaplo.length,
              (index) => TapLoItem(
                    id: index.toString(),
                    name: listtaplo[index].name,
                    image: listtaplo[index].image,
                    onPress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TapLoItemDetail(
                          name: listtaplo[index].name,
                          image: listtaplo[index].image,
                          description: listtaplo[index].description,
                        ),
                      ));
                    },
                  )),
        ),
      ),
    );
  }
}
