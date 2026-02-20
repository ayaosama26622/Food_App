import 'package:flutter/material.dart';
import 'package:food_app/core/constants/image_app.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/features/account/widgets/button_profile.dart';
import 'package:food_app/features/account/widgets/account_item.dart';


class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,

      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        toolbarHeight: 110,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(AppImage.sayed),
            ),
            const SizedBox(width: 15),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sayed Abdul-Aziz",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "sayed@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.edit, color: Colors.green),
          ],
        ),
      ),

      body: 
      AccountItem(),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ButtonProfile(
          text: "Log Out",
          icon: Icons.logout,
          onPressed: () {},
        ),
      ),
    );
  }
}
