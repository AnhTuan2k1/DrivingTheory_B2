import 'package:driving_theory_b2/UI/theory_screens/tricks/li_thuyet/screens/trick_li_thuyet_screen.dart';
import 'package:driving_theory_b2/UI/theory_screens/tricks/thuc_hanh/screens/thuc_hanh.dart';
import 'package:driving_theory_b2/UI/theory_screens/tricks/trick_item.dart';
import 'package:flutter/material.dart';

class TrickList extends StatelessWidget {
  const TrickList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Card(
            color: const Color.fromARGB(255, 194, 250, 200),
            child: InkWell(
              splashColor: const Color.fromARGB(255, 113, 235, 117),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TrickLiThuyet(),
                ),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/book2.png', width: 180, height: 180, fit: BoxFit.fill,),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Mẹo lí thuyết',
                        style: TextStyle(
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
          ),
          Card(
            color: const Color.fromARGB(255, 194, 250, 200),
            child: InkWell(
              splashColor: const Color.fromARGB(255, 113, 235, 117),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TrickThucHanh(),
                ),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/car2.png', width: 180, height: 180, fit: BoxFit.fill,),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Mẹo Thực hành',
                        style: TextStyle(
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
          ),
        ],
    );
  }
}
