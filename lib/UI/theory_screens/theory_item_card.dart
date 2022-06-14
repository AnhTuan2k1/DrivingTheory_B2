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
      color: const Color.fromARGB(255, 98, 223, 113),
      elevation: 0.3,
      child: InkWell(
        splashColor: const Color.fromARGB(255, 113, 235, 117),
        onTap: onTap,
        child: SizedBox(
          //height: 160,
          height: 360,
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/$imageName'),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
