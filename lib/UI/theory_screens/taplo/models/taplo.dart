class TapLo {
  final String name;
  final String description;
  final String image;

  TapLo({
    required this.name,
    required this.description,
    required this.image,
  });
}

List<TapLo> listtaplo = [
  TapLo(
    name: 'Đèn cảnh báo lỗi phanh tay',
    description:
        'Đèn báo bật sáng thường do quên hạ phanh tay khi xe bắt đầu chạy. Nếu đã hạ phanh tay mà đèn vẫn sáng thì có thể công tắc phanh bị cài đặt sai, mức dầu phanh thấp, áp suất thuỷ lực bị mất…',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F1.jpg?alt=media&token=ea6a0e92-1f80-4c31-aa40-09efb33fcb39',
  ),
  TapLo(
    name: 'Đèn cảnh báo nhiệt độ nước làm mát',
    description:
        'Đèn báo bật sáng khi nhiệt độ động cơ cao hơn mức an toàn cho phép, động cơ bị quá nhiệt. Nguyên nhân có thể do nước làm mát bị thiếu, két nước bị tắc, quạt két nước hay bơm nước bị trục trặc… Đây là đèn báo nguy kiểm cần ngay lập tức dừng xe vào nơi an toàn và kiểm tra xe.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F2.jpg?alt=media&token=e8eda8af-0711-4621-a568-ebbf5273c99b',
  ),
  TapLo(
    name: 'Đèn cảnh báo áp suất dầu ở mức thấp',
    description:
        'Đèn báo bật sáng khi áp suất dầu xuống thấp. Nguyên nhân có thể do bơm dầu bị lỗi, xe bị thiếu dầu, sử dụng không đúng loại dầu nhớt, van an toàn bị kẹt… Khi thấy đèn báo cần kiểm tra càng sớm càng tốt.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/600Questions%2F5%2F293.png?alt=media&token=ab11929b-bd6f-486c-ae63-40f0e8fff250',
  ),
  TapLo(
    name: 'Đèn cảnh báo lỗi trợ lực lái điện',
    description:
        'Đèn báo bật sáng khi hệ thống trợ lực lái điện đang gặp trục trặc, cảm biến trợ lực bị lỗi… Khi hệ thống trợ lực lái điện bị lỗi thường kèm theo dấu hiệu vô lăng bị nặng do đó cần sớm kiểm tra.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/600Questions%2F5%2F301.png?alt=media&token=7044ab97-a0fb-4d9e-9c62-a8acea13a915',
  ),
  TapLo(
    name: 'Đèn cảnh báo lỗi túi khí',
    description:
        'Đèn báo bật sáng khi túi khí bị hỏng, pin hết điện, cảm biến bị lỗi hoặc chốt an toàn bị lỗi… cần kiểm tra sớm.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F5.jpg?alt=media&token=4b791ae6-699a-4f78-83b4-5e01ca7ce97a',
  ),
  TapLo(
    name: 'Đèn cảnh báo lỗi ắc quy',
    description:
        'Đèn báo bật sáng khi ắc quy hết bình. Nguyên nhân có thể do máy phát điện bị trục trặc, ắc quy yếu cần thay mới…',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F6.jpg?alt=media&token=18ca16a2-2452-44c1-aed2-a2ee9fce05c5',
  ),
  TapLo(
    name: 'Đèn báo khóa vô lăng',
    description:
        'Đèn báo bật sáng khi vô lăng xe bị khóa. Nguyên nhân vô lăng bị khoá cứng thường do xoay vô lăng khi đã tắt máy hay tắt máy nhưng quên trả về N hoặc P.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F7.jpg?alt=media&token=e0c51e16-02f6-4f7c-a201-a22baf032e39',
  ),
  TapLo(
    name: 'Đèn báo bật công tắc khóa điện',
    description: 'Đèn báo bật sáng khi bật công tắc khóa điện.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F8.jpg?alt=media&token=3b2fe971-861c-4f85-81dc-f77ddc8f0a00',
  ),
  TapLo(
    name: 'Đèn cảnh báo chưa thắc dây an toàn',
    description:
        'Đèn báo bật sáng khi chưa thắt dây an toàn hoặc dây an toàn đang bị lỗi.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F9.jpg?alt=media&token=dbfd5bd1-41ed-4c92-b1fe-7e152876cfa3',
  ),
  TapLo(
    name: 'Đèn cảnh báo cửa xe đang mở',
    description: 'Đèn báo bật sáng khi cửa ô tô chưa đóng kín.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F10.jpg?alt=media&token=84ce6989-83c2-4092-8672-f6d811e5c3e7',
  ),
  TapLo(
    name: 'Đèn cảnh báo nắp capo đang mở',
    description: 'Đèn báo bật sáng khi nắp capo đang mở.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F11.jpg?alt=media&token=693ec397-f266-4fcb-9400-79a7a3d31911',
  ),
  TapLo(
    name: 'Đèn cảnh báo cốp xe đang mở',
    description: 'Đèn báo bật sáng khi cốp xe đang mở.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Ftaplo%2F12.jpg?alt=media&token=c0227858-f8c1-4f9c-a3b3-a582a55f3ce6',
  ),

  // TapLo(
  //   name: name,
  //   description: description,
  //   image: image,
  // ),
];
