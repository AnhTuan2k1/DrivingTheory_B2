class BienBaoNguyHiem {
  final String id;
  final String name;
  final String image;
  final String description;

  BienBaoNguyHiem({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });
}

List<BienBaoNguyHiem> listbienbaonguyhiem = [
  BienBaoNguyHiem(
    id: 'W.201a',
    name: 'Chỗ ngoặt nguy hiểm vòng bên trái',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2Fw201a.jpg?alt=media&token=bcf7bd62-98d4-4cf6-9644-59d1e08e739d',
    description:
        'Biển báo giao thông này được đặt để báo trước sắp đến một chỗ ngoặt nguy hiểm vòng bên trái.',
  ),
  BienBaoNguyHiem(
    id: 'W.201b',
    name: 'Chỗ ngoặt nguy hiểm vòng bên phải',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2Fw201b.jpg?alt=media&token=c4609f14-3c1e-4032-bdb9-d5cf3160f6d7',
    description: 'Báo trước sắp đến một chỗ ngoặt nguy hiểm vòng bên phải.',
  ),
  BienBaoNguyHiem(
    id: 'W.202a',
    name: 'Chỗ ngoặt nguy hiểm vòng bên trái.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F202a.jpg?alt=media&token=d527e945-1e20-48e8-b379-1aa7409c0db5',
    description:
        'Biển báo giao thông này được Báo trước sắp đến một chỗ ngoặt nguy hiểm phía bên trái.',
  ),
  BienBaoNguyHiem(
    id: 'W.202b',
    name: 'Chỗ ngoặt nguy hiểm vòng bên phải.',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F202b.jpg?alt=media&token=8ce77090-80a5-493c-8225-488fcf7f712b',
    description: 'Báo trước sắp đến một chỗ ngoặt nguy hiểm phía bên phải .',
  ),
  BienBaoNguyHiem(
    id: 'W.203a',
    name: 'Đường bị hẹp cả hai bên',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F203a.jpg?alt=media&token=12e7ab2b-e496-43bc-93b4-b5d6b012cd91',
    description:
        'Biển báo giao thông này được đặt để báo trước sắp đến một đoạn đường bị hẹp đột ngột cả hai bên.',
  ),
  BienBaoNguyHiem(
    id: 'W.203b',
    name: 'Đường bị hẹp về phía trái',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F203b.jpg?alt=media&token=c9183943-199b-49b7-8654-d50af7385d0c',
    description:
        'Báo trước sắp đến một đoạn đường bị hẹp đột ngột về phía trái.',
  ),
  BienBaoNguyHiem(
    id: 'W.203c',
    name: 'Đường bị hẹp về phía phải',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F203c.jpg?alt=media&token=34b5f0a1-06db-4526-8def-722fca29dbc4',
    description:
        'Báo trước sắp đến một đoạn đường bị hẹp đột ngột về phía phải.',
  ),
  BienBaoNguyHiem(
    id: 'W.204',
    name: 'Đường hai chiều',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F204.jpg?alt=media&token=02184808-a3c1-48a8-a990-79ff214ba1de',
    description:
        'Biển báo giao thông này được đặt để báo trước sắp đến đoạn đường vì lý do sửa chữa hoặc có trở ngại ở một phía đường mà phải giải quyết đi lại của phương tiện phía đường còn lại hoặc để báo trước đoạn đường đôi tạm thời hay thường xuyên các chiều xe đi và về phải đi chung.',
  ),
  BienBaoNguyHiem(
    id: 'W.205a',
    name: 'Đường giao nhau',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F205a.jpg?alt=media&token=0f6f2a1b-c7c5-4db6-a809-335cc51eafb1',
    description:
        'Biển báo giao thông này được đặt để báo trước sắp đến nơi giao nhau của các tuyến đường cùng cấp (không có đường nào ưu tiên).',
  ),
  BienBaoNguyHiem(
    id: 'W.205b',
    name: 'Đường giao nhau',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F205b.jpg?alt=media&token=42994ab2-9763-42ba-a598-f1014d774c05',
    description:
        'Báo trước sắp đến nơi giao nhau của các tuyến đường cùng cấp (không có đường nào ưu tiên).',
  ),
  BienBaoNguyHiem(
    id: 'W.205c',
    name: 'Đường giao nhau',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F205c.jpg?alt=media&token=05f85212-dddc-4cae-b44c-348569d9e9ee',
    description:
        'Báo trước sắp đến nơi giao nhau của các tuyến đường cùng cấp (không có đường nào ưu tiên).',
  ),
  BienBaoNguyHiem(
    id: 'W.205d',
    name: 'Đường giao nhau',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F205d.jpg?alt=media&token=269b0259-acdd-406c-823e-be503475efd4',
    description:
        'Báo trước sắp đến nơi giao nhau của các tuyến đường cùng cấp (không có đường nào ưu tiên).',
  ),
  BienBaoNguyHiem(
    id: 'W.205e',
    name: 'Đường giao nhau',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F205e.jpg?alt=media&token=7f8f4bdd-5092-47cf-a9c6-2e1aed08156b',
    description:
        'Báo trước sắp đến nơi giao nhau của các tuyến đường cùng cấp (không có đường nào ưu tiên).',
  ),
  BienBaoNguyHiem(
    id: 'W.206',
    name: 'Giao nhau chạy theo vòng xuyến',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F206.jpg?alt=media&token=03431579-f988-4a9a-b67a-bfbda4b2c56a',
    description:
        'Biển báo giao thông này được đặt để báo trước nơi giao nhau có bố trí đảo an toàn ở giữa điểm giao, các loại xe qua điểm giao vòng trái, phải đi vòng xuyến qua đảo an toàn.',
  ),
  BienBaoNguyHiem(
    id: 'W.208',
    name: 'Giao nhau với đường ưu tiên',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F208.jpg?alt=media&token=d9a95e0d-2668-44cc-85aa-2a11bbd0dfc8',
    description:
        'Biển báo giao thông này được đặt trên đường không ưu tiên để báo trước sắp đến nơi giao nhau với đường ưu tiên.',
  ),
  BienBaoNguyHiem(
    id: 'W.209',
    name: 'Giao nhau có tín hiệu đèn',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F209.jpg?alt=media&token=e786b42b-339f-4069-b8f6-608df7044803',
    description:
        'Biển báo giao thông này được đặt để báo trước nơi giao nhau có sự điều khiển giao thông bằng tín hiệu đèn (hệ thống 3 đèn bật theo chiều đứng) và trong trường hợp thiết bị tín hiệu đèn không được nhìn thấy rõ ràng và kịp thời.',
  ),

  // BienBaoNguyHiem(
  //   id: id,
  //   name: name,
  //   image: image,
  //   description: description,
  // ),
];
