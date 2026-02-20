class ProductFavourite {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;
  ProductFavourite({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
  });
}
List<ProductFavourite> favourite =[
  ProductFavourite(
    id:'1',
    name:'Sprite Can',
    price: 1.500,
    weight: '355ml',
    image:'assets/images/Sprite Can.png',
    ),
  ProductFavourite(
    id:'2',
    name:'Diet Coke',
    price: 1.99,
    weight: '355ml',
    image: 'assets/images/Diet Coke.png',
    ),
    ProductFavourite(
    id:'4',
    name:'Coca Cola Can',
    price: 4.99,
    weight: '325ml',
    image: 'assets/images/Coca Cola Can.png' ,
    ),
    ProductFavourite(
    id:'5',
    name:'Pepsi Can ',
    price: 4.99,
    weight: '330ml',
    image: 'assets/images/Pepsi Can.png' ,
    ),

];
