class Meolithuyet {
  final String name;

  final Trick trick;

  Meolithuyet({
    required this.name,
    required this.trick,
  });
}

class Trick {
  final String meo1;
  final String meo2;
  final String meo3;
  final String meo4;
  final String meo5;
  final String meo6;
  final String meo7;
  final String meo8;
  final String meo9;
  final String meo10;
  final String meo11;
  final String meo12;

  Trick({
    required this.meo1,
    required this.meo2,
    required this.meo3,
    required this.meo4,
    required this.meo5,
    required this.meo6,
    required this.meo7,
    required this.meo8,
    required this.meo9,
    required this.meo10,
    required this.meo11,
    required this.meo12,
  });
}

List<Meolithuyet> meolithuyet = [
  Meolithuyet(
    name: 'Nhận diện biển báo giao thông',
    trick: Trick(
      meo1: 'Biển báo cấm: Hình tròn viền đỏ, nền trắng',
      meo2: 'Biển báo nguy hiểm: Hình tam giác vàng viền đỏ',
      meo3: 'Biển báo hiệu lệnh: Hình tròn xanh',
      meo4: 'Biển chỉ dẫn: Hình vuông hoặc chữ nhật xanh',
      meo5: 'Biển báo phụ: Hình vuông hoặc chữ nhật trắng/đen',
      meo6: '',
      meo7: '',
      meo8: '',
      meo9: '',
      meo10: '',
      meo11: '',
      meo12: '',
    ),
  ),
  Meolithuyet(
    name: 'Các mẹo học biển báo B2 cần nhớ',
    trick: Trick(
      meo1:
          'Sơ đồ thứ tự cấm: Ô tô con > xe khách > xe tải > xe máy kéo > xe kéo móc',
      meo2: 'Biển Cấm 2 bánh: cấm luôn 3 bánh nhưng không cấm 4 bánh',
      meo3: 'Biển Cấm 4 bánh: cấm 3 bánh nhưng không cấm 2 bánh',
      meo4: 'Biển Cấm xe nhỏ: cấm luôn xe lớn',
      meo5: 'Biển Cấm xe ô tô: cấm luôn xe lam, xe ba bánh…',
      meo6: 'Biển Cấm xe lớn: không cấm xe nhỏ',
      meo7: 'Biển Cấm rẽ trái: cấm luôn quay đầu',
      meo8: 'Biển Cấm quay đầu: không cấm rẽ trái',
      meo9: 'Biển màu xanh cho phép quay đầu: không cấm rẽ trái',
      meo10: 'Biển STOP: mọi xe đều dừng, bao gồm xe ưu tiên',
      meo11:
          'Biển Cấm ô tô vượt: tất cả xe tải, xe khách… đều không được phép vượt',
      meo12: 'Biển Cấm xe tải vượt: không cấm xe ô tô, xe khách…',
    ),
  ),
  Meolithuyet(
    name: 'Các mẹo thi biển báo B2 lưu ý',
    trick: Trick(
      meo1:
          'Câu hỏi có 2 hoặc 3 biển tròn màu xanh phân 2 trường hợp: Loại câu dài 1 hàng thì chọn đáp án 1. Loại câu từ 2 hàng trở lên chọn đáp án 3.',
      meo2: 'Câu hỏi có đáp án “Không được phép” thì chọn đáp án này.',
      meo3: 'Đỗ xe: không giới hạn thời gian',
      meo4: 'Dừng xe: có giới hạn thời gian',
      meo5: '',
      meo6: '',
      meo7: '',
      meo8: '',
      meo9: '',
      meo10: '',
      meo11: '',
      meo12: '',
    ),
  ),
  Meolithuyet(
    name: 'Câu hỏi về khái niệm, văn hoá, đạo đức…',
    trick: Trick(
      meo1:
          'Các câu hỏi về chủ đề sau thì chọn đáp áp \“Tất cả\”: Đạo đức, Kinh doanh vận tải, Hành vi',
      meo2: 'Các câu hỏi có phần đáp án chứa những từ sau thì chọn đáp áp đó:',
      meo3: 'Chấp hành' +
          '\n\n' +
          'Bắt buộc' +
          '\n\n' +
          'Cơ quan có thẩm quyền' +
          '\n\n' +
          'Dùng thanh nối cứng' +
          '\n\n' +
          'Báo hiệu tạm thời' +
          '\n\n' +
          'Nghiêm cấm/bị nghiêm cấm' +
          '\n\n' +
          'Hiệu lệnh người điều khiển giao thông' +
          '\n\n' +
          'Xe chữa cháy làm nhiệm vụ' +
          '\n\n' +
          'Phương tiện giao thông đường sắt' +
          '\n\n' +
          'Đèn chiếu xa sang gần' +
          '\n\n' +
          'Về số thấp… gài số 1' +
          '\n\n' +
          'Giảm tốc độ (nếu có 2 đáp án cùng có cụm từ này, chọn đáp án bên phải)',
      meo4: 'Trong câu hỏi chứa những từ sau thì chọn đáp án dài nhất:',
      meo5: 'Quan sát' +
          '\n\n' +
          'Kiểm tra' +
          '\n\n' +
          'Ở' +
          '\n\n' +
          'Tại' +
          '\n\n' +
          'Phải' +
          '\n\n' +
          'Trên' +
          '\n\n' +
          'Xe chữa cháy',
      meo6:
          'Trong câu hỏi có ý liệt kê về các chủ đề sau thì chọn 2 đáp án (thường câu hỏi này chỉ 2 có đáp án):',
      meo7: 'Đạo đức ' +
          '\n\n' +
          'Nghĩa vụ ' +
          '\n\n' +
          'Hành vi ' +
          '\n\n' +
          'Trách nhiệm' +
          '\n\n' +
          'Khách Tham gia giao thông ' +
          '\n\n' +
          'Văn hoá giao thông' +
          '\n\n' +
          'Tư tưởng Hồ Chí Minh',
      meo8: '',
      meo9: '',
      meo10: '',
      meo11: '',
      meo12: '',
    ),
  ),
  Meolithuyet(
    name: 'Câu hỏi thứ tự xe ưu tiên',
    trick: Trick(
      meo1:
          'Thứ tự xe ưu tiên như sau: xe chữa cháy > xe quân sự, xe công an làm nhiệm vụ > xe cứu thương > xe hộ đê, đi làm nhiệm vụ khắc phục sự cố thiên tai, dịch bệch > đoàn xe tang',
      meo2: '',
      meo3: '',
      meo4: '',
      meo5: '',
      meo6: '',
      meo7: '',
      meo8: '',
      meo9: '',
      meo10: '',
      meo11: '',
      meo12: '',
    ),
  ),
  Meolithuyet(
    name: 'Câu hỏi về tốc độ xe',
    trick: Trick(
      meo1: 'Trong khu dân cư: tốc độ 30 km/h (xe công nông)',
      meo2: 'Trong khu dân cư: tốc độ 40 km/h (xe gắn máy, xe môtô)',
      meo3: 'Trong khu dân cư: tốc độ 50 km/h (xe < 3,5 tấn)',
      meo4: 'Ngoài khu dân cư: tốc độ 40 km/h – Chọn đáp án 1',
      meo5: 'Ngoài khu dân cư: tốc độ 50 km/h – Chọn đáp án 3',
      meo6: 'Ngoài khu dân cư: tốc độ 60 km/h – Chọn đáp án 4',
      meo7: 'Ngoài khu dân cư: tốc độ 70 km/h – Chọn đáp án 2',
      meo8: 'Ngoài khu dân cư: tốc độ 80 km/h – Chọn đáp án 1',
      meo9: 'Trên đường cao tốc: chọn đáp án tốc độ cao nhất (trừ 30)',
      meo10:
          '*Mẹo nhớ dễ nhất là theo phép tính: 8 x 7 = 5 6 tương tự 80 (chọn đáp án 1), 70 (chọn đáp án 2), 50 (chọn đáp án 3), 60 (chọn đáp án 4).',
      meo11: '',
      meo12: '',
    ),
  ),
  Meolithuyet(
    name: 'Câu hỏi dấu bằng lái',
    trick: Trick(
      meo1: 'B2 < hoặc 9 chỗ; < 3,5 tấn: Chọn đáp án 2',
      meo2: 'C < hoặc 9 chỗl > 3,5 tấn: Chọn đáp án 3',
      meo3: 'FC: Chọn đáp án 2',
      meo4: 'FE: Chọn đáp án 1',
      meo5: 'Tuổi tối đa lái xe dấu E: Chọn đáp án 55 tuổi/nam và 50 tuổi/nữ',
      meo6: 'Xe tải: Chọn đáp án 25 năm',
      meo7: 'Chở người > 9 chỗ: Chọn đáp án 20 năm',
      meo8: '',
      meo9: '',
      meo10: '',
      meo11: '',
      meo12: '',
    ),
  ),
  Meolithuyet(
    name: 'Câu hỏi độ tuổi tham gia giao thông',
    trick: Trick(
      meo1: '16 tuổi: Chọn xe máy dưới 50 cm3',
      meo2: '18 tuổi Chọn hạng A1, A2, B2',
      meo3: '21 tuổi Chọn hạng C',
      meo4: '24 tuổi Chọn hạng D',
      meo5: '27 tuổi Chọn hạng E',
      meo6: 'Nam > 60 tuổi, nữ > 55 tuổi Chọn hạng B1',
      meo7:
          '*Một mẹo nhỏ nhớ đáp án của các câu hỏi về tuổi tham gia giao thông là bằng lái từ B2 đến E sẽ cách nhau 3 tuổi.',
      meo8: '',
      meo9: '',
      meo10: '',
      meo11: '',
      meo12: '',
    ),
  ),
  Meolithuyet(
    name: 'Câu hỏi về niên hạn sử dụng xe',
    trick: Trick(
      meo1: 'Xe tải: 25 năm',
      meo2: 'Xe ô tô trên 9 chỗ: 20 năm',
      meo3: '',
      meo4: '',
      meo5: '',
      meo6: '',
      meo7: '',
      meo8: '',
      meo9: '',
      meo10: '',
      meo11: '',
      meo12: '',
    ),
  ),
  Meolithuyet(
    name: 'Câu hỏi về kỹ thuật lái xe',
    trick: Trick(
      meo1: 'Điều khiển ô tô rẽ trái Chọn đáp án 1',
      meo2:
          'Điều khiển ô tô tới gần xe chạy ngược chiều vào ban đêm Chọn đáp án 1',
      meo3: 'Điều khiển tăng số Chọn đáp án 1',
      meo4:
          'Thao tác mở cửa khi ô tô đã đỗ sát vào lề đường bên phải Chọn đáp án 1',
      meo5: 'Lái xe ô tô qua đường sắt không rào chắn… Chọn đáp án 1',
      meo6: 'Khi quay đầu Chọn đáp án 1',
      meo7:
          'Khi đèn pha của xe ô tô chạy ngược chiều gây chói mắt… Chọn đáp án 1',
      meo8: 'Điều khiển ô tô rẽ phải ở đường giao nhau Chọn đáp án 2',
      meo9: 'Điều khiển ô tô giảm số Chọn đáp án 2',
      meo10: 'Điều khiển ô tô trên đường trơn Chọn đáp án 2'
              'Khi nhả phanh tay Chọn đáp án 2' +
          '\n\n' 'Khi khởi hành ô tô trên đường bằng Chọn đáp án 2',
      meo11: 'Khi vừa có xe đi ngược chiều tới gần và vừa có xe phía sau cố tình muốn vượt, người lái xe xử lý như thế nào Chọn đáp án 2' +
          '\n\n' +
          'Tầm nhìn bị hạn chế bởi sương mù Chọn đáp án 2' +
          '\n\n' +
          'Điều khiển xe vượt qua rãnh lớn cắt ngang mặt đường Chọn đáp án 3' +
          '\n\n' +
          'Khi tránh nhau trên đường hẹp Chọn đáp án 1&2' +
          '\n\n' +
          'Thao tác điều khiển xe qua đường sắt Chọn đáp án 1&2',
      meo12:
          'Điều khiển xe vào lúc trời mưa to hoặc có sương mù Chọn đáp án 1&2' +
              '\n\n' +
              'Điều khiển đỗ xe ô tô Chọn đáp án 1&3',
    ),
  ),

  Meolithuyet(
    name: 'Câu hỏi về sa hình',
    trick: Trick(
      meo1: 'Bước 1: Xét xe trong giao lộ',
      meo2:
          'Bước 2: Xét xe ưu tiên (xe chữa cháy, xe quân sự - công an, xe cứu thương…)',
      meo3: 'Bước 3: Xét xe đường ưu tiên (biển báo)',
      meo4: 'Bước 4: Xét xe bên phải không vướng (từ ngã 4)',
      meo5: 'Bước 5: Xét xe phải trước > đi thẳng > rẽ trái > quay đầu',
      meo6: 'Có vòng xuyến Chọn nhường bên trái',
      meo7: 'Không vòng xuyến Chọn nhường bên phải',
      meo8:
          '2 hình giống nhau chọn theo quy tắc Chọn theo quy tắc phải, thẳng, trái',
      meo9: 'Xe nào chấp đúng hướng mũi tên Chọn 2',
      meo10: 'Thấy công an giao thông Chọn 3',
      meo11: '',
      meo12: '',
    ),
  ),
  // Meolithuyet(
  //   name: name,
  //   trick: Trick(
  //     meo1: meo1,
  //     meo2: meo2,
  //     meo3: meo3,
  //     meo4: meo4,
  //     meo5: meo5,
  //     meo6: meo6,
  //     meo7: meo7,
  //     meo8: meo8,
  //     meo9: meo9,
  //     meo10: meo10,
  //     meo11: meo11,
  //     meo12: meo12,
  //   ),
  // ),
];
