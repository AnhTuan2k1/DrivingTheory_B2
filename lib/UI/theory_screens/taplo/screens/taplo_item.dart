import 'package:flutter/material.dart';

class TapLoItem extends StatelessWidget {
  const TapLoItem({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
    required this.onPress,
  }) : super(key: key);

  final String id;
  final String name;
  final String image;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 166, 253, 177),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        splashColor: Colors.green,
        borderRadius: BorderRadius.circular(15.0),
        onTap: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 110,
              height: 100,
              child: Image.network(
                image,
                width: 100,
                height: 100,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 10),
                    child: Text(
                      id,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      name,
                      style: const TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
