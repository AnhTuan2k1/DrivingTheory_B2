import 'package:flutter/material.dart';

class TrickLiThuyetItem extends StatelessWidget {
  const TrickLiThuyetItem({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 7.0,
        horizontal: 16,
      ),
      child: Card(
        color: Color.fromARGB(255, 89, 222, 82),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: InkWell(
          onTap: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    height: 30,
                    child: Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ),
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
