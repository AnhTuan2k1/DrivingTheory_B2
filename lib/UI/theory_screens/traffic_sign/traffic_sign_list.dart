import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/sign_list.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/traffic_sign_item.dart';
import 'package:flutter/material.dart';

class TrafficSignList extends StatelessWidget {
  const TrafficSignList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo cấm',
                  onPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignList()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo nguy hiểm',
                  onPress: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo hiệu lệnh',
                  onPress: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo chỉ dẫn',
                  onPress: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo phụ',
                  onPress: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Vạch kẻ đường',
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
