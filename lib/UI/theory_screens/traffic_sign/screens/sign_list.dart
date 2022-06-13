import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/models/bienbaocam.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/models/bienbaochidan.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/models/bienbaohieulenh.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/models/bienbaonguyhiem.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/models/bienbaophu.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/models/vachkeduong.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/screens/sign_item.dart';
import 'package:driving_theory_b2/UI/theory_screens/traffic_sign/screens/sign_item_detail.dart';

import 'package:flutter/material.dart';

class SignListBienBaoCam extends StatelessWidget {
  const SignListBienBaoCam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          listbienbaocam.length,
          (index) => SignItem(
            id: listbienbaocam[index].id,
            name: listbienbaocam[index].name,
            image: listbienbaocam[index].image,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignItemDetail(
                  name: listbienbaocam[index].name,
                  image: listbienbaocam[index].image,
                  description: listbienbaocam[index].description,
                ),
              ));
            },
          ),
        ),
      ),
    ));
  }
}

class SignListBienBaoNguyHiem extends StatelessWidget {
  const SignListBienBaoNguyHiem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          listbienbaonguyhiem.length,
          (index) => SignItem(
            id: listbienbaonguyhiem[index].id,
            name: listbienbaonguyhiem[index].name,
            image: listbienbaonguyhiem[index].image,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignItemDetail(
                  name: listbienbaonguyhiem[index].name,
                  image: listbienbaonguyhiem[index].image,
                  description: listbienbaonguyhiem[index].description,
                ),
              ));
            },
          ),
        ),
      ),
    ));
  }
}

class SignListBienBaoHieuLenh extends StatelessWidget {
  const SignListBienBaoHieuLenh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          listbienbaohieulenh.length,
          (index) => SignItem(
            id: listbienbaohieulenh[index].id,
            name: listbienbaohieulenh[index].name,
            image: listbienbaohieulenh[index].image,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignItemDetail(
                  name: listbienbaohieulenh[index].name,
                  image: listbienbaohieulenh[index].image,
                  description: listbienbaohieulenh[index].description,
                ),
              ));
            },
          ),
        ),
      ),
    ));
  }
}

class SignListBienBaoChiDan extends StatelessWidget {
  const SignListBienBaoChiDan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          listbienbaochidan.length,
          (index) => SignItem(
            id: listbienbaochidan[index].id,
            name: listbienbaochidan[index].name,
            image: listbienbaochidan[index].image,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignItemDetail(
                  name: listbienbaochidan[index].name,
                  image: listbienbaochidan[index].image,
                  description: listbienbaochidan[index].description,
                ),
              ));
            },
          ),
        ),
      ),
    ));
  }
}

class SignListBienBaoPhu extends StatelessWidget {
  const SignListBienBaoPhu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          listbienbaophu.length,
          (index) => SignItem(
            id: listbienbaophu[index].id,
            name: listbienbaophu[index].name,
            image: listbienbaophu[index].image,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignItemDetail(
                  name: listbienbaophu[index].name,
                  image: listbienbaophu[index].image,
                  description: listbienbaophu[index].description,
                ),
              ));
            },
          ),
        ),
      ),
    ));
  }
}

class SignListVachKeDuong extends StatelessWidget {
  const SignListVachKeDuong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          listvachkeduong.length,
          (index) => SignItem(
            id: listvachkeduong[index].id,
            name: listvachkeduong[index].name,
            image: listvachkeduong[index].image,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignItemDetail(
                  name: listvachkeduong[index].name,
                  image: listvachkeduong[index].image,
                  description: listvachkeduong[index].description,
                ),
              ));
            },
          ),
        ),
      ),
    ));
  }
}
