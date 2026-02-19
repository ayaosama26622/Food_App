import 'package:flutter/material.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/widgets/custom_svg_picture.dart';
import 'package:food_app/core/constants/image_app.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/widgets/custom_text_from_field.dart';
import 'package:food_app/features/home/widgets/offers_builder.dart';
import 'package:food_app/features/home/widgets/best_selling_builder .dart';
import 'package:food_app/features/search/page/search_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSvgPicture(
          path: AppImage.logoSvg,
          width: 250,
          color: AppColor.PrimaryColor,
          ),
          toolbarHeight: 80,
          
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
                Hero(
                  tag: 'search',
                  child: Material(
                    color: Colors.transparent,
                    child: CustomTextFromField(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search Store',
                        readOnly: true,
                        onTap: () {
                          pushTo(context, SearchScreen());
                        },
                      ),
                  ),
                ),
                  OffersBuilder(),
                  BestSellingBuilder(),
            ]
              ),
        )
      )
    );
  }
}
