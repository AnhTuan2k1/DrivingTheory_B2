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
        horizontal: 16,
      ),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: InkWell(
          splashColor: Colors.green,
          borderRadius: BorderRadius.circular(15.0),
          onTap: onPress,
          child: Container(
            color: Colors.white30,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
