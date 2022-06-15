import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheoryItemCard extends StatelessWidget {
  const TheoryItemCard({
    Key? key,
    //required this.colors,
    required this.imageName,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  //final Color colors;
  final String imageName;
  final String description;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 194, 250, 200),
      child: InkWell(
        splashColor: const Color.fromARGB(255, 113, 235, 117),
        onTap: onTap,
        child: Row(
          children: [
            Image.asset('assets/images/$imageName', width: 200, height: 200, fit: BoxFit.fill,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
