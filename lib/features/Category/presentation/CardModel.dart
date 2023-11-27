import 'package:social_app/core/utils/image_constant.dart';

class cardModel {
  final String imagepath;
  final String title;
  cardModel({required this.imagepath, required this.title}) {}
}

List<cardModel> cards = [
  cardModel(imagepath: ImageConstant.imgWxm465om4j4, title: 'Photographer'),
  cardModel(
      imagepath: ImageConstant.imgWxm465om4j4180x153, title: 'Video Creator'),
  cardModel(imagepath: ImageConstant.imgWxm465om4j41, title: 'Illistrator'),
  cardModel(imagepath: ImageConstant.imgWxm465om4j42, title: 'Designer'),
];
