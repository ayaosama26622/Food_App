import 'package:flutter/material.dart';
import 'package:food_app/core/constants/image_app.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/widgets/custom_svg_picture.dart';
import 'package:food_app/features/Favourite/page/favourite_screeen.dart';
import 'package:food_app/features/account/page/account_screen.dart';
import 'package:food_app/features/cart/page/cart_screen.dart';
import 'package:food_app/features/home/page/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screen =[
    HomeScreen(),
    Center(child: Text("Explore"),),
    CartScreen(),
    FavouriteScreeen(),
    AccountScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screen[currentIndex],
      bottomNavigationBar: navBar(),
      );
  }
  Container navBar() {
    return Container(
      padding: const EdgeInsets.only(top: 8 , bottom: 8),
        decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff555E58).withValues(alpha: .1),
              blurRadius: 10,
              offset: Offset(0, -5),
            )
          ]
        ),
        child: BottomNavigationBar(
          
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex =index;
              
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path:AppImage.store),
              activeIcon: CustomSvgPicture(
                path: AppImage.store,
                color: AppColor.PrimaryColor
              ),
              label: 'Shop',
      ),
      BottomNavigationBarItem(
              icon: CustomSvgPicture(path:AppImage.explore),
              activeIcon: CustomSvgPicture(
                path: AppImage.explore,
                color: AppColor.PrimaryColor
              ),
              label: 'Explore',
      ),
      BottomNavigationBarItem(
              icon: CustomSvgPicture(path:AppImage.cart),
              activeIcon: CustomSvgPicture(
                path: AppImage.cart,
                color: AppColor.PrimaryColor
              ),
              label: 'Cart',
      ),
      BottomNavigationBarItem(
              icon: CustomSvgPicture(path:AppImage.Favourite),
              activeIcon: CustomSvgPicture(
                path: AppImage.Favourite,
                color: AppColor.PrimaryColor
              ),
              label: 'Favourite',
      ),
      BottomNavigationBarItem(
              icon: CustomSvgPicture(path:AppImage.profile),
              activeIcon: CustomSvgPicture(
                path: AppImage.profile,
                color: AppColor.PrimaryColor
              ),
              label: 'Account',
      ),
        ]
      )
      );
  }
}
