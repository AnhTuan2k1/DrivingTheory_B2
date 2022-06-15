


import 'package:flutter/material.dart';

import '../theory_screens/traffic_sign/screens/sign_item_detail.dart';

class TheoryDialog extends StatelessWidget {
  const TheoryDialog({
    Key? key, required String this.name, required String this.image, required String this.description,
  }) : super(key: key);

  final String name;
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SignItemDetail(
        name: name,
        image: image,
        description: description,
      ),
    );
  }
}