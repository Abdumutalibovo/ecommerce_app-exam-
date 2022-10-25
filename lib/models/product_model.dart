import 'package:ecommerce/utils/images.dart';

class ProductModel {
  String name;
  String series;
  int price;
  String image;
  String? info;

  ProductModel({
    required this.name,
    required this.series,
    required this.price,
    required this.image,
    required this.info,
  });

  static final products=[
    ProductModel(name: "Apple Watch", series: "Series 6 . Red", price: 359, image: myImages.watch_image, info: '2020 Apple iPad Air 10.9'),
    ProductModel(name: "Samsung", series: "Active 6 . Black", price: 120, image: myImages.watch_image2, info: '2020 Apple iPad Air 10.9'),
    ProductModel(name: "iPad", series: "Active 10.9 . Black", price: 579, image: myImages.iphat_image, info: '2020 Apple iPad Air 10.9'),
  ];
}
