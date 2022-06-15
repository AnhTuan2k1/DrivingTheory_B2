import 'package:flutter/material.dart';

class SignItemDetail extends StatelessWidget {
  const SignItemDetail({
    Key? key,
    required this.name,
    required this.description,
    required this.image,
  }) : super(key: key);

  final String name;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Material(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Image.network(image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
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
