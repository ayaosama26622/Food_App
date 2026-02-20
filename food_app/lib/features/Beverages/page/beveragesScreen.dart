import 'package:flutter/material.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/features/Explore/page/explore_screen.dart';
import 'package:food_app/features/home/data/product_model.dart';
import 'package:food_app/features/search/widgets/filtere_grid_view.dart';

class Beveragesscreen extends StatefulWidget {
  const Beveragesscreen({super.key});

  @override
  State<Beveragesscreen> createState() => _BeveragesscreenState();
}

class _BeveragesscreenState extends State<Beveragesscreen> {
  final focusNode = FocusNode();
    String searchKey='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () { 
        pushTo(context, ExploreScreen());
      },
    ),
    title: const Text(
      'Fresh Fruits & Vegetable',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.tune, // أيقونة الفلتر
          color: Colors.black,
        ),
        onPressed: () {
          // وظيفة الفلترة
        },
      ),
    ],
  ),
  body:FiltereGridView(products: getProductsByName(searchKey),)

    );
  }

}
List<ProductModel> getProductsByName(String searchKey){
  List<ProductModel> filteredProducts =[];
    for (var product in search){
      if (product.name.toLowerCase().contains(searchKey)){
        filteredProducts.add(product);
    }
    }
    return filteredProducts;
}
