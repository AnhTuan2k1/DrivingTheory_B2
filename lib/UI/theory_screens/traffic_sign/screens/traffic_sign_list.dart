import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/screens/sign_list.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/screens/traffic_sign_item.dart';

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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignListBienBaoCam()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo nguy hiểm',
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignListBienBaoNguyHiem()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo hiệu lệnh',
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignListBienBaoHieuLenh()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo chỉ dẫn',
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignListBienBaoChiDan()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Biển báo phụ',
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignListBienBaoPhu()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: TrafficSignItem(
                  name: 'Vạch kẻ đường',
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignListVachKeDuong()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
