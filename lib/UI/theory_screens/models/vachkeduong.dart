class VachKeDuong {
  final String id;
  final String name;
  final String image;
  final String description;

  VachKeDuong({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });
}

List<VachKeDuong> listvachkeduong = [
  VachKeDuong(
    id: 'Vạch số 1.1',
    name: 'Vạch liền nét màu trắng, rộng 10cm',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F1.1.png?alt=media&token=117b9ee7-0dcc-4486-88a6-ff692de1e97f',
    description:
        'Phân chia 2 dòng phương tiện giao thông đi ngược chiều nhau, xe không được đè lên vạch.',
  ),
  VachKeDuong(
    id: 'Vạch số 1.2',
    name: 'Vạch liền nét màu trắng, rộng 20cm',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F1.2.png?alt=media&token=1f329a0c-cc3d-4947-8640-19e418dc4981',
    description:
        'Xác định mép phần xe cơ giới với phần xe thô sơ, người  đi bộ hoặc lề đường trên các trục đường, xe chạy được phép đè lên vạch khi cần thiết.',
  ),
  VachKeDuong(
    id: 'Vạch số 1.3',
    name:
        'Hai vạch liên tục màu trắng (vạch kép) có chiều rộng bằng nhau và bằng 10cm cách nhau là 10cm tính từ 2 mép vạch kề nhau',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F1.3.png?alt=media&token=e7fb56d7-61ad-49a0-b3d3-769a5cc944e7',
    description:
        'phân  chia  2  dòng  phương  tiện  giao  thông  đi  ngược chiều nhau trên những đường có từ 4 làn xe trở lên, xe không được đè lên vạch.',
  ),
  VachKeDuong(
    id: 'Vạch số 1.4',
    name: 'Vạch liên tục màu vàng có chiều rộng 10cm',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F1.4.png?alt=media&token=979962eb-0087-4fdf-a134-d44e9aa82bc2',
    description:
        'xác định nơi cấm dừng và cấm đỗ xe, áp dụng độc lập hoặc có thể kết hợp với biển báo cấm số 130 "Cấm dừng xe và đỗ xe" và kẻ ở mép đường hay ở trên hàng vỉa nơi có vỉa hè.',
  ),
  VachKeDuong(
    id: 'Vạch số 1.5',
    name: 'Vạch đứt quãng màu trắng, rộng 10cm',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F1.5.png?alt=media&token=fe6d3b5c-8237-47ce-be7b-820cd6c26665',
    description:
        'phân chia 2 dòng phương tiện giao thông đi ngược chiều nhau trên những đường có 2 hoặc 3 làn xe chạy hoặc xác định danh giới làn xe khi có từ 2 làn xe trở lên chạy theo một chiều.',
  ),
  VachKeDuong(
    id: 'Vạch số 1.6',
    name: 'Vạch đứt quãng màu trắng, rộng 10cm',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F1.6.png?alt=media&token=d1e9d4b8-16cf-45ff-8d74-9c9303e7c464',
    description:
        'báo hiệu chuẩn bị đến Vạch số 1.1 hay Vạch số 1.11 dùng để phân chia dòng xe ngược chiều hay cùng chiều.',
  ),
  VachKeDuong(
    id: 'Vạch số 1.7',
    name: 'Vạch đứt quãng màu trắng, rộng 10cm',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F1.7.png?alt=media&token=53275d89-3030-4c21-863b-ec833a4f76fc',
    description:
        'khoảng cách giữa hai vạch bằng chiều dài của vạch là 50cm. Vạch được kẻ theo đường cong để dẫn hướng rẽ ở chỗ đường giao nhau cho lái xe, để bảo đảm an toàn.',
  ),
  VachKeDuong(
    id: 'Vạch số 1.8',
    name:
        'Vạch đứt quãng màu  trắng, rộng 40cm dài 100cm, khoảng cách giữa hai vạch là 300cm',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F1.8.png?alt=media&token=d490287d-1120-485b-a66b-75dc7ed28e2d',
    description:
        'Dùng để quy định ranh giới giữa làn xe tăng tốc độ hoặc giảm tốc độ (gọi là làn đường chuyển tốc) với làn xe chính của phần xe chạy, được kẻ ở nơi giao nhau, nhằm dẫn hướng cho xe tách nhập làn an toàn.',
  ),
  // VachKeDuong(
  //   id: id,
  //   name: name,
  //   image: image,
  //   description: description,
  // ),
];
