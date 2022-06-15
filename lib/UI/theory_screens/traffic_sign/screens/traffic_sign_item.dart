import 'dart:math';

import 'package:flutter/material.dart';

class TrafficSignItem extends StatelessWidget {
  const TrafficSignItem({
    Key? key,
    required this.name,
    required this.onPress,
  }) : super(key: key);

  final String name;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
      ),
      child: Card(
        color: const Color.fromARGB(255, 207, 250, 206),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
        child: InkWell(
          splashColor: Colors.green,
          borderRadius: BorderRadius.circular(15.0),
          onTap: onPress,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.green,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            ),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3.0,
                          color: getColors(),
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(100))),
                    child: const Icon(Icons.directions),
                  ),
                  const SizedBox(width: 20,),
                  Text(
                    name,
                    style: const TextStyle(fontSize: 23),
                  ),
                  /*Text(
                    name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color getColors() {
    Random random = Random();
    List<Color> colors = <Color>[
      Colors.red,
      Colors.green,
      Colors.blueAccent,
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.yellowAccent,
      Colors.pinkAccent,
      Colors.cyan,
      Colors.purple,
      Colors.teal,
      Colors.tealAccent,
      Colors.lightGreenAccent,
      Colors.lightGreen,
      Colors.pink,
      Colors.blueGrey
    ];
    return colors[random.nextInt(colors.length)];
  }
}
