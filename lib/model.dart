import 'package:flutter/material.dart';

class Fruit {
  String price;
  String title;
  String subTitle;
  String imgPath;
  Color bgColor;
  int rating;

  Fruit(
      {this.price,
        this.title,
        this.subTitle,
        this.imgPath,
        this.bgColor,
        this.rating});
}

var fruits = [
  Fruit(
      price: '\$1299',
      title: 'Apple',
      subTitle: '50%Mavrotragano, 50%Avgoustiatis',
      imgPath: 'image/images.jpg',
      bgColor: Color(0xFFFECBC2),
      rating: 5),
  Fruit(
      price: '\$999',
      title: 'Orange',
      subTitle: 'Junmal Ginjo',
      imgPath: 'image/heavensake.png',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
  Fruit(
      price: '\$999',
      title: 'Banana',
      subTitle: 'Junmal Ginjo',
      imgPath: 'image/images-1-removebg-preview.png',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
  Fruit(
      price: '\$999',
      title: 'Gwava',
      subTitle: 'Junmal Ginjo',
      imgPath: 'image/images-4-removebg-preview.png',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
];

var recommendFruits = [
  Fruit(
      price: '\$49',
      title: 'Apple',
      subTitle: 'Camofires + Grilled Cheese',
      imgPath:'image/images.jpg',
      bgColor: Color(0xFF6CD7DC),
      rating: 5),
  Fruit(
      price: '\$669',
      title: 'Orange',
      subTitle: '70cl Bottle in Giftbox / 40%ABV',
      imgPath: 'image/heavensake.png',
      bgColor: Color(0xFFF28E90),
      rating: 4),
  Fruit(
      price: '\$669',
      title: 'Banana',
      subTitle: '70cl Bottle in Giftbox / 40%ABV',
      imgPath: 'image/images-1-removebg-preview.png',
      bgColor: Color(0xFFF28E90),
      rating: 4),
  Fruit(
      price: '\$669',
      title: 'Gwava',
      subTitle: '70cl Bottle in Giftbox / 40%ABV',
      imgPath: 'image/images-4-removebg-preview.png',
      bgColor: Color(0xFFF28E90),
      rating: 4),
];

class Cotegories {
  String title;
  String imgPath;
  Color bgColor;

  Cotegories(
      {
        this.title,
        this.imgPath,
        this.bgColor,
        });
}

var catego = [
  Cotegories(
      title: 'Fruits',
      imgPath: 'image/multifruit.jpg',
      bgColor: Color(0xFFFECBC2),
      ),
  Cotegories(
      title: 'Drink',
      imgPath: 'image/heavensake.png',
      bgColor: Color(0xFFB4E8EB),
      ),
  Cotegories(
    title: 'vagetables',
    imgPath: 'image/heavensake.png',
    bgColor: Color(0xFFB4E8EB),
  ),
  Cotegories(
    title: 'bakri',
    imgPath: 'image/images-4-removebg-preview.png',
    bgColor: Color(0xFFB4E8EB),
  ),

];

/*
class Related {
  String price;
  String title;
  String subTitle;
  String imgPath;
  Color bgColor;
  int rating;

  Related(
      {this.price,
        this.title,
        this.subTitle,
        this.imgPath,
        this.bgColor,
        this.rating});
}
*/

/*var relations = [
  Related(
      price: '\$1299',
      title: 'Apple',
      subTitle: '50%Mavrotragano, 50%Avgoustiatis',
      imgPath: 'image/images.jpg',
      bgColor: Color(0xFFFECBC2),
      rating: 5),
  Related(
      price: '\$999',
      title: 'Orange',
      subTitle: 'Junmal Ginjo',
      imgPath: 'image/heavensake.png',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
  Related(
      price: '\$999',
      title: 'Banana',
      subTitle: 'Junmal Ginjo',
      imgPath: 'image/images-1-removebg-preview.png',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
  Related(
      price: '\$999',
      title: 'Gwava',
      subTitle: 'Junmal Ginjo',
      imgPath: 'image/images-4-removebg-preview.png',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
];*//*

var relatedList = [
  Related(
      price: '\$49',
      title: 'Apple',
      subTitle: 'Camofires + Grilled Cheese',
      imgPath:'image/images.jpg',
      bgColor: Color(0xFF6CD7DC),
      rating: 5),
  Related(
      price: '\$669',
      title: 'Orange',
      subTitle: '70cl Bottle in Giftbox / 40%ABV',
      imgPath: 'image/heavensake.png',
      bgColor: Color(0xFFF28E90),
      rating: 4),
  Related(
      price: '\$669',
      title: 'Banana',
      subTitle: '70cl Bottle in Giftbox / 40%ABV',
      imgPath: 'image/images-4-removebg-preview.png',
      bgColor: Color(0xFFF28E90),
      rating: 4),
  Related(
      price: '\$669',
      title: 'Gwava',
      subTitle: '70cl Bottle in Giftbox / 40%ABV',
      imgPath: 'image/images-1-removebg-preview.png',
      bgColor: Color(0xFFF28E90),
      rating: 4),
];*/
/*
import 'package:flutter/material.dart';

class Wine {
  String price;
  String title;
  String subTitle;
  String imgPath;
  Color bgColor;
  int rating;

  Wine(
      {this.price,
        this.title,
        this.subTitle,
        this.imgPath,
        this.bgColor,
        this.rating});
}

var wines = [
  Wine(
      price: '\$1299',
      title: 'Mavrose Rose Wine',
      subTitle: '50%Mavrotragano, 50%Avgoustiatis',
      imgPath: 'image/heavensake.png',
      bgColor: Color(0xFFFECBC2),
      rating: 5),
  Wine(
      price: '\$999',
      title: 'Heavensake',
      subTitle: 'Junmal Ginjo',
      imgPath: 'image/images.jpg',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
];

var recommendWines = [
  Wine(
      price: '\$49',
      title: 'Bold Smooth Lush',
      subTitle: 'Camofires + Grilled Cheese',
      imgPath: 'image/heavensake.png',
      bgColor: Color(0xFF6CD7DC),
      rating: 5),
  Wine(
      price: '\$669',
      title: 'Bold Smooth Lush',
      subTitle: '70cl Bottle in Giftbox / 40%ABV',
      imgPath: 'image/images.jpg',
      bgColor: Color(0xFFF28E90),
      rating: 4),
];*/
