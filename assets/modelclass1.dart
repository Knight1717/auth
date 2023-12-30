import 'dart:math';
class Model1
{
  String? image;
  String? text;

  Model1(this.image,this.text);
}
List war = dataModel1.map((e) => Model1(e["image"], e["text"])).toList();

var dataModel1=[
  {"image":"assets/phone.jpg","text":"Bags"},
  {"image":"assets/tv.jpg","text":"Smart"},
  {"image":"assets/bottle.webp","text":"Lap"},
  {"image":"assets/shoe.webp","text":"Airpods"},
  {"image":"assets/groce.jpg","text":"Grocery"},
  {"image":"assets/tv.jpg","text":""},
];