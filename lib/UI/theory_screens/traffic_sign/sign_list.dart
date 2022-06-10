import 'package:driving_theory_b2/UI/theory_screens/models/bienbaocam.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/sign_item.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/sign_item_detail.dart';
import 'package:flutter/material.dart';

class SignList extends StatelessWidget {
  const SignList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          listbienbaocam.length,
          (index) => SignItem(
            id: listbienbaocam[index].id,
            name: listbienbaocam[index].name,
            image: listbienbaocam[index].image,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignItemDetail(
                  name: listbienbaocam[index].name,
                  image: listbienbaocam[index].image,
                  description: listbienbaocam[index].description,
                ),
              ));
            },
          ),
        ),
      ),
    ));
  }
}
