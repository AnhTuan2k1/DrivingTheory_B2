import 'package:flutter/material.dart';

class TrickItem extends StatelessWidget {
  const TrickItem({
    Key? key,
    required this.imageName,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String imageName;
  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 89, 222, 82),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: InkWell(
        onTap: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/$imageName'),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
