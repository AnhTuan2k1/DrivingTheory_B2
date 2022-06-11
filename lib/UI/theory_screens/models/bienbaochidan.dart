class BienBaoChiDan {
  final String id;
  final String name;
  final String image;
  final String description;

  BienBaoChiDan({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });
}

List<BienBaoChiDan> listbienbaochidan = [
  BienBaoChiDan(
    id: 'I.401',
    name: 'Bắt đầu đường ưu tiên',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F401.png?alt=media&token=3b8231bf-ecba-451e-ad41-2ed027553929',
    description:
        'Để biểu thị ưu tiên cho các phương tiện trên đường có đặt biển này được đi trước. Biển đặt tại vị trí thích hợp trước khi đường nhánh sắp nhập vào trục đường chính, yêu cầu phương tiện từ đường nhánh ra phải dừng lại nhường cho phương tiện trên đường chính đi trước.',
  ),
  BienBaoChiDan(
    id: 'I.402',
    name: 'Hết đoạn đường ưu tiên',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F402.png?alt=media&token=6c741d9b-e3e1-4b82-afed-889b75a55122',
    description: 'Báo hiệu hết đoạn đường được ưu tiên',
  ),
  BienBaoChiDan(
    id: 'I.403a',
    name: 'Đường dành cho ôtô',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F403a.png?alt=media&token=15d8ae00-92bd-497f-afad-9e117d511981',
    description:
        'Để chỉ dẫn bắt đầu đường dành cho các loại ôtô đi lại, các loại phương tiện giao thông khác không được phép đi vào đoạn đường có dặt biển này',
  ),
  BienBaoChiDan(
    id: 'I.403b',
    name: 'Đường dành cho ô tô, xe máy',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F403b.png?alt=media&token=17bbae63-8451-4eb1-8ff0-280c60a0ef48',
    description:
        'Để chỉ dẫn bắt đầu đường dành cho các loại ôtô, xe máy (kể cả xe gắn máy) đi lại, các loại phương tiện giao thông khác không được phép đi vào đoạn đường có đặt biển này',
  ),
  BienBaoChiDan(
    id: 'I.404a',
    name: 'Hết đường dành cho ô tô',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F404a.png?alt=media&token=a0bf61cd-f396-4126-b965-f0db6799b57e',
    description: 'Để chỉ dẫn hết đoạn đường dành cho ôtô đi lại',
  ),
  BienBaoChiDan(
    id: 'I.404b',
    name: 'Hết đường dành cho ô tô, xe máy',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaochidan%2F404b.png?alt=media&token=a8f21271-1794-4f0f-a563-feaaa969431a',
    description: 'Để chỉ dẫn hết đoạn đường dành cho ôtô, xe máy đi lại',
  ),
];
