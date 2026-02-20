import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/custom_text_from_field.dart';
import 'package:food_app/features/home/data/product_model.dart';
import 'package:food_app/features/search/widgets/filtere_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchKey='';
  @override
  void initState(){
    super.initState();
    focusNode.requestFocus();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: 'search',
          child: Material(
            color: Colors.transparent,
            child: CustomTextFromField(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search Store',
              focusNode: focusNode,
              onChanged: (value){
                setState(() {
                  searchKey = value;
                });
              },
            ),
          ),
        ),
        actions: [SizedBox(width: 16,)],
        toolbarHeight: 80,
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