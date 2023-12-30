import 'dart:math';

class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}
List bar1= dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel=[
  {"image":"assets/shoe.webp",},
  {"image":"assets/bag.jpg",},
  {"image":"assets/pods.jfif",},
  {"image":"assets/phone.jpg",},
  {"image":"assets/tv2.jpeg",},
];