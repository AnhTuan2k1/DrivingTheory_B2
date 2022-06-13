import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meothuchanh {
  final String name;
  final String description1;
  final String description2;
  final BaiSaHinh baisahinh;

  Meothuchanh({
    required this.name,
    required this.description1,
    required this.description2,
    required this.baisahinh,
  });
}

class SaHinh {
  final String title;
  final String description;
  SaHinh({
    required this.title,
    required this.description,
  });
}

class BaiSaHinh {
  final SaHinh baisahinh1;
  final SaHinh baisahinh2;
  final SaHinh baisahinh3;
  final SaHinh baisahinh4;
  final SaHinh baisahinh5a;
  final SaHinh baisahinh5b;
  final SaHinh baisahinh5c;

  final SaHinh baisahinh8;
  final SaHinh baisahinh9;
  final SaHinh baisahinh10;
  final SaHinh baisahinh11;

  BaiSaHinh({
    required this.baisahinh1,
    required this.baisahinh2,
    required this.baisahinh3,
    required this.baisahinh4,
    required this.baisahinh5a,
    required this.baisahinh5b,
    required this.baisahinh5c,
    required this.baisahinh8,
    required this.baisahinh9,
    required this.baisahinh10,
    required this.baisahinh11,
  });
}

class textStyle {
  final TextStyle tieude;
  final TextStyle noidung;

  textStyle({
    required this.tieude,
    required this.noidung,
  });
}

final tieude = TextStyle(
  color: Colors.green,
  fontSize: 26,
  fontWeight: FontWeight.bold,
);

final noidung = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w400,
);

final texts = textStyle(tieude: tieude, noidung: noidung);

final meothuchanh = Meothuchanh(
  name: 'MẸO THI THỰC HÀNH LÁI XE B2',
  description1: 'Chuẩn trước khi bắt đầu bài thi',
  description2:
      'Khi vào xe, người thi không bật đèn xi-nhan ngay. Vì đây được xem là tín hiệu cho thấy người thi đã sẵn sàng. Thay vào đó, vừa vào xe, người thi hãy tiến hành điều chỉnh ghế, điều chỉnh kính chiếu hậu vừa tầm mắt, thắt dây an toàn, hạ phanh tay, vào số 1… Khi đã chuẩn bị đầy đủ các bước và hít hở sâu để giảm căng thẳng, sau đó người bật xi-nhan để thông báo cho sát hạch viên bản thân đã sẵn sàng.',
  baisahinh: BaiSaHinh(
      baisahinh1: SaHinh(
        title: 'Bài sa hình 1: Xuất phát',
        description:
            'Khi có hiệu lệnh “Bắt đầu”, người thi mở côn cho xe chạy từ từ qua vạch xuất phát. Lưu ý từ khi có hiệu lệnh sau 20 giây xe vẫn chưa qua vạch xuất phát sẽ bị trừ 5 điểm, sau 30 giây bị loại thẳng.',
      ),
      baisahinh2: SaHinh(
        title: 'Bài sa hình 2: Dừng xe nhường đường người đi bộ',
        description:
            'Ở bài này, xe cần dừng trước vạch trắng - phần kẻ sọc dành cho người đi bộ. Tuy nhiên cản trước cách vạch không quá 0,5m.',
      ),
      baisahinh3: SaHinh(
        title: 'Bài sa hình 3: Dừng và khởi hành ngang dốc',
        description:
            'Khi vào bài thi này có một mẹo thi sa hình B2 là không cần đạp ga, chỉ cần mở côn để xe lăn bánh đến cột STOP. Chú ý, xe dừng quá cột STOP sẽ bị loại trực tiếp. Cho xe lăn bánh thấy vai cách cột STOP tầm 3 tấc thì cắt côn và phanh nhanh là được.' +
                '\n\n' +
                'Giữ chân côn từ từ khi thấy kim vòng tua máy xuống giữa 1 và 0 thì nhả phanh, đạp ga liên tục. Khi lên dốc xe cách vạch dừng không quá 50 cm, không để xe bị tụt dốc quá 50 cm.',
      ),
      baisahinh4: SaHinh(
        title: 'Bài sa hình 4: Bài thi qua vệt bánh xe và đường vòng vuông góc',
        description:
            'Qua vệt bánh xe: Bánh xe trước và bánh xe sau bên phụ qua vùng giới hạn của vệt bánh xe. Nếu không qua vùng giới hạn, người thi sẽ bị loại thẳng. Mỗi lần bánh xe đè lên vạch sẽ bị trừ 5 điểm, quá 5 giây sẽ bị trừ thêm 5 điểm. Thời gian hoàn thành bài thi không quá 2 phút, nếu vượt qua 2 phút sẽ bị trừ 5 điểm.' +
                '\n\n' +
                'Qua đường vòng vuông góc: Canh sao để vai bạn ngang với góc đường thì đánh hết lái thật nhanh.',
      ),
      baisahinh5a: SaHinh(
        title: 'Bài sa hình 5: Qua ngã tư có tín hiệu điều khiển giao thông',
        description:
            'Khi thấy đèn tín hiệu, xe phải dừng trước vạch vàng 1m và cắt côn. Sau khi đợi đèn đỏ còn tầm 2 giây thì mở côn đi tiếp. Chú ý nếu thấy đèn xanh còn 3 - 4 giây cũng không nên đi vì nếu xe chưa qua hết gặp đèn đỏ sẽ bị trừ 10 điểm. Thời gian lái xe qua ngã tư là 20 giây. Sau 20 giây từ khi đèn xanh sáng lên mà xe chưa qua hết ngã tư bị trừ 5 điểm, sau 30 giây bị loại thẳng.',
      ),
      baisahinh5b: SaHinh(
        title: 'Bài sa hình 5: Bài thi đường vòng quanh co',
        description:
            'Với bài thi này áp dụng quy tắc “tiến bám lưng, lùi bám bụng”. Bánh xe không được đè vạch giới hạn. Mỗi lần đè sẽ bị trừ 5 điểm. Sau 5 giây bị trừ tiếp 5 điểm. Bài thi này cần hoàn thành trong 5 phút, sau 5 phút bị trừ 5 điểm.',
      ),
      baisahinh5c: SaHinh(
        title: 'Bài sa hình 5: Bài thi đường vòng quanh co',
        description:
            'Xe không được chạm vạch hoặc đè vỉa hè. Khi nghe âm báo “Tưng” thì phanh lại và chạy ra khỏi chuồng. Bài thi thực hiện trong 2 phút.',
      ),
      baisahinh8: SaHinh(
        title: 'Bài sa hình 8: Bài thi tạm dừng ở nơi có đường sắt chạy qua',
        description:
            'Xe phải dừng cách vách quy định không quá 50 cm. Nếu cách xa hơn 50 cm bị trừ 5 điểm. Dừng xe lố vạch quy định trừ 5 điểm. Mẹo sa hình B2 ở phần thi này là căn qua gương phụ trái. Nếu mắt người thi, mép dưới gương phụ và vạch dừng thẳng hàng thì đạp phanh và côn để xe dừng lại.',
      ),
      baisahinh9: SaHinh(
        title: 'Bài sa hình 9: Thay đổi số trên đường thẳng',
        description:
            'Cho xe đi thẳng, cầm chắc vô lăng, nhả hết côn, phanh và đạp ga từ từ để xe tăng tốc. Khi xe qua biển “Bắt đầu” thì đạp chân côn vào số 2 rồi nhả chân côn, đạp chân ga để đi tiếp.' +
                '\n\n' +
                'Tốc độ tối thiểu phải trên 20 km/h. Khi gần như dừng lại thì cho về số 1 trước biển “Tốc độ tối đa cho phép”. Cuối cùng nhả côn, cho xe từ từ đi qua biển báo này.',
      ),
      baisahinh10: SaHinh(
        title: 'Bài sa hình 10: Thay đổi số trên đường thẳng',
        description:
            'Để canh dễ dàng, khi thấy vai trùng với góc vuông thì đánh hết vô lăng sang phải, lùi xe vào chỗ đỗ khi xe ở góc 45 độ so với đường thẳng vỉa hè. Sau đó trả lái cho xe lùi khi nào bánh xe sau bên trái ngang với mép ngoài của xe. Xoay vô lăng sang trái và lùi dần vào chỗ đỗ. Cuối cùng điều chỉnh xe về đúng vị trí, chú ý giữ khoảng cách để dễ dàng chạy ra.',
      ),
      baisahinh11: SaHinh(
        title: 'Bài sa hình 11: Kết thúc bài thi',
        description:
            'Khi kết thúc bài thi, người thi bật đèn xi nhan, phải lái xe qua hẳn vạch kết thúc. Nếu không bật xi-nhan sẽ bị trừ 5 điểm.',
      )),
);
