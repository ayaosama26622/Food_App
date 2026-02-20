class ProductCart {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;
  int quantity;
  ProductCart({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
    required this.quantity,
  });
}
List<ProductCart> CartProduct =[
  ProductCart(
    id:'1',
    name:'Bell Pepper Red',
    price: 4.99,
    weight: '1kg',
    quantity: 1,
    image:'assets/images/pepper.png',
    ),
  ProductCart(
    id:'2',
    name:'Egg Chicken Red',
    price: 1.99,
    weight: '4pcs',
    quantity: 1,
    image: 'assets/images/Egg Chicken Red.png',
    ),
    ProductCart(
    id:'4',
    name:'Organic Bananas',
    price: 3.00,
    weight: '12kg',
    quantity: 1,
    image: 'assets/images/Organic Bananas.png',
    ),
    ProductCart(
    id:'5',
    name:'Ginger',
    price: 2.99,
    weight: '250gm',
    quantity: 1,
    image: 'assets/images/Ginger.png',
    ),

];


