import 'package:flutter/material.dart';

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;
  final String tagKey;
  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
    required this.tagKey,
  });
}
List<ProductModel> offers =[
  ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Bananas',
    price: 4.99,
    weight: '7pcs',
    image: 'assets/images/banana.png',
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Red Apple',
    price: 4.99,
    weight: '1kg',
    image: 'assets/images/appel.png' ,
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Red Apple',
    price: 4.99,
    weight: '1kg',
    image: 'assets/images/appel.png' ,
    ),


];

List<ProductModel> bestSelling =[
  ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Bell Pepper Red',
    price: 4.99,
    weight: '1kg',
    image: 'assets/images/Bell Pepper Red.png',
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Ginger',
    price: 4.99,
    weight: '250gm',
    image: 'assets/images/pngfuel .png' ,
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Red Apple',
    price: 4.99,
    weight: '1kg',
    image: 'assets/images/appel.png' ,
    ),

];

List<ProductModel> search =[
  ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Diet Coke',
    price: 1.99,
    weight: '355ml',
    image: 'assets/images/Diet Coke.png',
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Sprite Can',
    price: 1.50,
    weight: '355ml',
    image:'assets/images/Sprite Can.png',
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Apple & Grape Juice',
    price: 15.99,
    weight: '2L',
    image: 'assets/images/Grape.png' ,
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Orenge Juice',
    price: 15.99,
    weight: '2L',
    image: 'assets/images/Orenge Juice.png',
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Coca Cola Can',
    price: 4.99,
    weight: '325ml',
    image: 'assets/images/Coca Cola Can.png' ,
    ),
    ProductModel(
    id:'1',
    tagKey: UniqueKey().toString(),
    name:'Pepsi Can ',
    price: 4.99,
    weight: '330ml',
    image: 'assets/images/Pepsi Can.png' ,
    ),

];

  
