class BienBaoHieuLenh {
  final String id;
  final String name;
  final String image;
  final String description;

  BienBaoHieuLenh({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });
}

List<BienBaoHieuLenh> listbienbaohieulenh = [
  BienBaoHieuLenh(
    id: 'R.301a',
    name: 'Hướng đi phải theo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F301a.jpg?alt=media&token=7fcd2d36-235c-4b40-8a10-f95bb5b9f6e6',
    description:
        'các xe chỉ được đi thẳng (trừ xe được quyền ưu tiên theo quy định)',
  ),
  BienBaoHieuLenh(
    id: 'R.301b',
    name: 'Hướng đi phải theo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F301b.jpg?alt=media&token=68f7005a-b1bf-43d0-9a6e-c4e3387bc232',
    description:
        'các xe chỉ được rẽ phải (trừ xe được quyền ưu tiên theo quy định). Biển này được đặt ở sau nơi đường giao nhau.',
  ),
  BienBaoHieuLenh(
    id: 'R.301c',
    name: 'Hướng đi phải theo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F301c.jpg?alt=media&token=6be8d5f9-3a46-4473-bfdc-0b8c5d448bc6',
    description:
        'các xe chỉ được rẽ trái (trừ xe được quyền ưu tiên theo quy định). Biển này được đặt ở sau nơi đường giao nhau.',
  ),
  BienBaoHieuLenh(
    id: 'R.301d',
    name: 'Hướng đi phải theo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F301d.jpg?alt=media&token=616157e9-f54c-4682-b934-05fc9a30df10',
    description:
        'các xe chỉ được rẽ phải (trừ xe được quyền ưu tiên theo quy định). Biển này được đặt ở trước nơi đường giao nhau, có tác dụng tại nơi giao nhau đằng sau mặt biển.',
  ),
  BienBaoHieuLenh(
    id: 'R.301e',
    name: 'Hướng đi phải theo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F301e.jpg?alt=media&token=20db5448-bc51-4741-af33-99f4503c640e',
    description:
        'các xe chỉ được rẽ trái (trừ xe được quyền ưu tiên theo quy định).  Biển này được đặt ở trước nơi đường giao nhau, có tác dụng tại nơi giao nhau đằng sau mặt biển.',
  ),
  BienBaoHieuLenh(
    id: 'R.301f',
    name: 'Hướng đi phải theo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F301f.jpg?alt=media&token=8ad72161-f22c-4e91-999a-0a15e730113a',
    description:
        'các xe chỉ được đi thẳng và rẽ phải (trừ xe được quyền ưu tiên theo quy định)',
  ),
  BienBaoHieuLenh(
    id: 'R.301h',
    name: 'Hướng đi phải theo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F301h.jpg?alt=media&token=7d381373-c897-4c4d-89fa-5f27ceff896b',
    description:
        'các xe chỉ được đi thẳng và rẽ trái (trừ xe được quyền ưu tiên theo quy định)',
  ),
  BienBaoHieuLenh(
    id: 'R.301i',
    name: 'Hướng đi phải theo',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F301i.jpg?alt=media&token=bc8fea36-8e69-467d-bb67-7d2266dd6566',
    description:
        'các xe chỉ được rẽ phải và rẽ trái (trừ xe được quyền ưu tiên theo quy định)',
  ),
  BienBaoHieuLenh(
    id: 'R.302a',
    name: 'Hướng phải đi vòng chướng ngại vật',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F302a.jpg?alt=media&token=e6b69091-3a70-43dc-beb2-4e54c2013b19',
    description:
        'báo các loại xe (cơ giới và thô sơ) hướng đi vòng sang phải để qua một chướng ngại vật',
  ),
  BienBaoHieuLenh(
    id: 'R.302b',
    name: 'Hướng phải đi vòng chướng ngại vật',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F302b.jpg?alt=media&token=61ab981a-96de-4662-baef-9ed461e1beaa',
    description:
        'báo các loại xe (cơ giới và thô sơ) hướng đi vòng sang trái để qua một chướng ngại vật ',
  ),
  BienBaoHieuLenh(
    id: 'R.303',
    name: 'Nơi giao nhau chạy theo vòng xuyến',
    image:
        'https://firebasestorage.googleapis.com/v0/b/drivingtheory-b2.appspot.com/o/trafficsign%2Fbienbaocam%2F303.jpg?alt=media&token=4357f292-2450-4d66-9de5-70793518e1ed',
    description:
        'báo cho các loại xe (thô sơ và cơ giới) phải chạy vòng theo đảo an toàn ở nơi đường giao nhau.',
  ),
  // BienBaoHieuLenh(
  //   id: id,
  //   name: name,
  //   image: image,
  //   description: description,
  // ),
];
