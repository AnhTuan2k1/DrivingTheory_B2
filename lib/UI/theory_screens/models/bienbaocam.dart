class BienBaoCam {
  final String id;
  final String name;
  final String image;
  final String description;

  BienBaoCam({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });
}

List<BienBaoCam> listbienbaocam = [
  BienBaoCam(
    id: 'P.101',
    name: 'Đường Cấm',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2Fbien-bao-duong-cam-p-101.jpg?alt=media&token=147e2f30-3316-40d7-b5ad-9f13f3e160d3',
    description:
        'Biển báo giao thông này được đặt để báo đường cấm tất cả các loại phương tiện (cơ giới và thô sơ) đi lại cả hai hướng, trừ các xe được ưu tiên theo quy định. Biển đường cấm thường gặp ở tuyến đường đang thi công hoặc tuyến đường cấm các phương tiện qua lại vì lý do an ninh.',
  ),
  BienBaoCam(
    id: 'P.102',
    name: 'Cấm Đi Ngược Chiều',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2Fbien-bao-cam-di-nguoc-chieu-p-102.jpg?alt=media&token=af5b7082-2557-4e7b-953b-c4a9baf6b1d1',
    description:
        'Biển báo giao thông này được đặt để  báo hiệu đường cấm tất cả các loại xe (cơ giới và thô sơ) đi vào theo chiều đặt biển, trừ các xe được ưu tiên theo luật lệ nhà nước quy định.',
  ),
  BienBaoCam(
    id: 'P.103a',
    name: 'Cấm Ô Tô',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2Fbien-bao-cam-o-to-p-103a.jpg?alt=media&token=71e25b32-14d8-42f7-8860-74d47b4e7f76',
    description:
        'Biển báo giao thông này được đặt để  báo giao thông báo đường cấm tất cả các loại xe cơ giới kể cả môtô 3 bánh có thùng đi qua, trừ môtô hai bánh, xe gắn máy và các xe được ưu tiên theo quy định.',
  ),
  BienBaoCam(
    id: 'P.103b',
    name: 'Cấm Ô Tô',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2Fbien-bao-cam-o-to-p-103b.jpg?alt=media&token=7ea8460a-1199-4a33-a1a7-6859e5627ca4',
    description:
        'Biển cấm ô tô rẽ phải - Biển báo cấm số hiệu P.103b báo đường cấm tất cả các loại xe cơ giới kể cả môtô 3 bánh có thùng đi qua, trừ môtô hai bánh, xe gắn máy và các xe được ưu tiên theo quy định.',
  ),
  BienBaoCam(
    id: 'P.103c',
    name: 'Cấm Ô Tô',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2Fbien-bao-cam-o-to-p-103c.jpg?alt=media&token=f13a122f-b31d-4ce2-b9ab-d98f608e2639',
    description:
        'Biển cấm ô tô rẽ trái - Biển báo cấm số hiệu P.103c báo đường cấm tất cả các loại xe cơ giới kể cả môtô 3 bánh có thùng rẽ trái, trừ môtô hai bánh, xe gắn máy và các xe được ưu tiên theo quy định.',
  ),
  BienBaoCam(
    id: 'P.104',
    name: 'Cấm Mô Tô',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F104.jpg?alt=media&token=d5acb280-e169-4df6-8f98-4f4ba47e5dd9',
    description:
        'Biển báo giao thông này được đặt để  cấm báo đường cấm tất cả các loại môtô đi qua, trừ các xe môtô được ưu tiên theo quy định. Biển cấm mô tô thường đặt trên các tuyến đường cao tốc hoặc tuyến đường, làn đường chỉ dành riêng cho ô tô.',
  ),
  BienBaoCam(
    id: 'P.105',
    name: 'Cấm Ô Tô Và Mô Tô',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F105.jpg?alt=media&token=8d9a6b94-47c5-4d7a-b57c-6489112abafd',
    description:
        'Biển báo giao thông này được đặt để cấm ô tô và mô tô - Biển báo giao thông số 105 là biển báo cấm báo đường cấm tất cả các loại xe cơ giới và môtô đi qua trừ xe gắn máy và các xe được ưu tiên theo quy định. Biển báo cấm ô tô và mô tô thường đặt trên làn đường dành riêng cho người đi bộ hoặc xe thô sơ hoặc trên cầu chỉ dành cho người đi bộ.',
  ),
  BienBaoCam(
    id: 'P.106a',
    name: 'Cấm ô tô tải',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F106a.jpg?alt=media&token=c95e9516-0d12-48d5-8ca3-9a3c1c9227ae',
    description:
        'Biển báo giao thông này được đặt để báo đường cấm tất cả các loại ôtô chở hàng có trọng tải từ 1,5 tấn trở lên trừ các xe được ưu tiên theo quy định. Biển có hiệu lực cấm đối với cả máy kéo và các xe máy chuyên dùng. Biển báo cấm ô tô tải thường gặp trên các tuyến đường có cầu yếu hoặc một số tuyến đường nội đô nhằm tránh tắc đường (thường là do đường hẹp).',
  ),
  BienBaoCam(
    id: 'P.106b',
    name: 'Cấm Ô Tô Tải',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F106b.jpg?alt=media&token=7b4c4db6-4cda-4729-a530-ca281b8c263d',
    description:
        'Biển báo cấm ô tô tải có tổng trọng lượng (trọng lượng xe cộng hàng) vượt quá con số đã quy định trên biển. Biển có hiệu lực cấm đối với cả máy kéo và các xe máy chuyên dùng đi vào đoạn đường đặt biển.',
  ),
  BienBaoCam(
    id: 'P.106c',
    name: 'Cấm Ô Tô Tải',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F106c.jpg?alt=media&token=df5ee8e9-2825-4e11-b4a7-78ad501325e3',
    description: 'Báo giao thông báo đường cấm các xe chở hàng nguy hiểm.',
  ),
  BienBaoCam(
    id: 'P.107',
    name: 'Cấm ô tô khách và ô tô tải',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F107.jpg?alt=media&token=10c60f72-9fdd-42ed-903c-307aa6887e2c',
    description:
        'Biển báo giao thông này và  cả các loại máy kéo và xe máy thi công chuyên dùng đi qua trừ các xe được ưu tiên theo quy định. Biển báo cấm ô tô khách và ô tô tải thường được sử dụng trong một số tuyến đường nội đô, đường nhỏ hẹp hoặc đường 1 chiều hoặc một số đường nhỏ ở vùng quê.',
  ),
  BienBaoCam(
    id: 'P.108',
    name: 'Cấm ô tô, máy kéo kéo moóc',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F108.jpg?alt=media&token=aef0c093-9c98-4911-8d2e-11a08666c9f4',
    description:
        'Biển báo giao thông này được đặt để báo đường cấm tất cả các loại xe cơ giới kéo theo rơ-moóc kể cả môtô, máy kéo, ôtô khách kéo theo rơ-moóc đi qua, trừ loại ôtô sơ-mi rơ-moóc và các xe được ưu tiên (có kéo theo rơ-moóc) theo luật lệ nhà nước quy định. Biển báo cấm này nhằm đảm bảo cho các phương tiện giao thông qua lại an toàn, không bị cản trở hoặc tắc nghẽn giao thông do các loại ôtô, máy kéo kéo moóc hoặc sơ mi rơ moóc gây ra.',
  ),
  BienBaoCam(
    id: 'P.109',
    name: 'Cấm máy kéo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F109.jpg?alt=media&token=682b538e-7c69-40a9-9fc8-39895b3e0e60',
    description:
        'Biển báo giao thông này được đặt để báo đường cấm tất cả các loại máy kéo, kể cả máy kéo bánh hơi và bánh xích đi qua.',
  ),
];
