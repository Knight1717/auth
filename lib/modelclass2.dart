import 'dart:math';

class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}
List bar= dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel=[
  {"image":"assets/rog.gif",},
  {"image":"assets/rog1.webp",},
  {"image":"assets/rog2.jpg",},
  {"image":"assets/rog3.jpg",},
  {"image":"assets/rog4.jpg",},
];