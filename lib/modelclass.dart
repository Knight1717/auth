import 'dart:math';

class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}
List com= dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel=[
  {"image":"assets/bag.jpg","text":"Bags"},
  {"image":"assets/watch.jpg","text":"Smart"},
  {"image":"assets/lap.jfif","text":"Lap"},
  {"image":"assets/pods.jfif","text":"Airpods"},
  {"image":"assets/groce.jpg","text":"Grocery"},
  {"image":"assets/tv.jpg","text":"Tv"},
  {"image":"assets/shoe.webp","text":"Footwear"},
  {"image":"assets/bottle.webp","text":"Bottel"},

];

