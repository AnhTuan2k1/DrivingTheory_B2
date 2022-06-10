import 'package:driving_theory_b2/UI/theory_screens/theory_item_card.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/traffic_sign_list.dart';
import 'package:flutter/material.dart';

class Theory extends StatelessWidget {
  const Theory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TheoryItemCard(
                      imageName: 'random.png',
                      description: 'Đề thi ngẫu nhiên',
                      onTap: () {},
                    ),
                    TheoryItemCard(
                      imageName: 'flashcard.png',
                      description: 'Ôn tập câu hỏi',
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TheoryItemCard(
                      imageName: 'trafficsign.png',
                      description: 'Các biển báo',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrafficSignList()));
                      },
                    ),
                    TheoryItemCard(
                      imageName: 'idea.png',
                      description: 'Mẹo ghi nhớ',
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TheoryItemCard(
                      imageName: 'alert.png',
                      description: 'Các câu gặp nhiều',
                      onTap: () {},
                    ),
                    TheoryItemCard(
                      imageName: 'confirm.png',
                      description: 'Các câu sai nhiều',
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
