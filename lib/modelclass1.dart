import 'dart:math';

class Model
{
  String? image;
  String? text;
  String? mrp;

  Model(this.image,this.text,this.mrp);
}
List wars= dataModel.map((e) => Model(e["image"], e["text"],e["mrp"])).toList();

var dataModel=[
  {"image":"assets/apay.png","text":"Amazon Pay","mrp":"10000"},
  {"image":"assets/apay1.png","text":"Send money","mrp":"10000"},
  {"image":"assets/apay2.png","text":"Valid Offers","mrp":"10000"},
  {"image":"assets/apay4.png","text":"Bills","mrp":"10000"},
];