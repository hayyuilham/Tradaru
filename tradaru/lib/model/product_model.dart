import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  int id;
  String brandName;
  String imgUrl;
  double price;
  double rating;
  int qty;
  Color color;

  int get idProduct => id;
  set idProduct(int value) {
    id = value;
  }

  int get qtyProduct => qty;
  set qtyProduct(int value) {
    qty = value;
  }

  String get brandNameProduct => brandName;
  set brandNameProduct(String value) {
    brandName = value;
  }

  String get imgUrlProduct => imgUrl;
  set imgUrlProduct(String value) {
    imgUrl = value;
  }

  double get priceProduct => price;
  set priceProduct(double value) {
    price = value;
  }

  double get ratingProduct => rating;
  set ratingProduct(double value) {
    rating = value;
  }

  Color get colorProduct => color;
  set colorProduct(Color value) {
    color = value;
  }

  Product(
      {this.id,
      this.brandName,
      this.price,
      this.qty,
      this.imgUrl,
      this.rating,
      this.color});
}

List<Product> productsShoes = [
  Product(
    id: 1,
    brandName: "Nike Air Max 20",
    price: 240.00,
    imgUrl: "https://img.icons8.com/plasticine/2x/apple.png",
    rating: 0.1454120339489805,
    qty: 1,
    color: Colors.deepOrange[100],
  ),
  Product(
      id: 2,
      brandName: "Excee Sneakes",
      price: 260.00,
      imgUrl: "https://img.icons8.com/cotton/2x/banana.png",
      rating: 3.6173186577549643,
      qty: 1,
      color: Colors.blue[100]),
  Product(
      id: 3,
      brandName: "Air Max Motion 2",
      price: 290.00,
      imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
      rating: 2.0491025928219564,
      qty: 1,
      color: Colors.green[100]),
  Product(
      id: 4,
      brandName: "Leather Sneaker",
      price: 270.00,
      imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
      rating: 4.708131337356812,
      qty: 1,
      color: Colors.amber[100]),
  Product(
      id: 5,
      brandName: "Ventela",
      price: 250.00,
      imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
      rating: 4.662223828084789,
      qty: 1,
      color: Colors.purple[100]),
];

List<Product> productsWatch = [
  Product(
    id: 1,
    brandName: "G-Shick",
    price: 240.00,
    imgUrl: "https://img.icons8.com/plasticine/2x/apple.png",
    rating: 0.1454120339489805,
    qty: 1,
    color: Colors.deepOrange[100],
  ),
  Product(
      id: 2,
      brandName: "Casio",
      price: 260.00,
      imgUrl: "https://img.icons8.com/cotton/2x/banana.png",
      rating: 3.6173186577549643,
      qty: 1,
      color: Colors.blue[100]),
  Product(
      id: 3,
      brandName: "Fossil",
      price: 290.00,
      imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
      rating: 2.0491025928219564,
      qty: 1,
      color: Colors.green[100]),
  Product(
      id: 4,
      brandName: "Daniel Wellington",
      price: 270.00,
      imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
      rating: 4.708131337356812,
      qty: 1,
      color: Colors.purple[100]),
  Product(
      id: 5,
      brandName: "Ventela",
      price: 250.00,
      imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
      rating: 4.662223828084789,
      qty: 1,
      color: Colors.amber[100]),
];

List<Product> productsBackpack = [
  Product(
    id: 1,
    brandName: "Homypad",
    price: 240.00,
    imgUrl: "https://img.icons8.com/plasticine/2x/apple.png",
    rating: 0.1454120339489805,
    qty: 1,
    color: Colors.deepOrange[100],
  ),
  Product(
      id: 2,
      brandName: "Dino",
      price: 260.00,
      imgUrl: "https://img.icons8.com/cotton/2x/banana.png",
      rating: 3.6173186577549643,
      qty: 1,
      color: Colors.blue[100]),
  Product(
    id: 3,
    brandName: "Export",
    price: 290.00,
    imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
    rating: 2.0491025928219564,
    qty: 1,
    color: Colors.deepOrange[100],
  ),
  Product(
      id: 4,
      brandName: "Bronz",
      price: 270.00,
      imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
      rating: 4.708131337356812,
      qty: 1,
      color: Colors.blue[100]),
  Product(
    id: 5,
    brandName: "Nike",
    price: 250.00,
    imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
    rating: 4.662223828084789,
    qty: 1,
    color: Colors.deepOrange[100],
  ),
];
