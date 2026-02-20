import 'package:flutter/material.dart';
import 'package:food_app/core/constants/image_app.dart';
import 'package:food_app/core/function/navigation.dart';
import 'package:food_app/core/styles/colors.dart';
import 'package:food_app/core/widgets/main_button.dart';
import 'package:food_app/features/home/page/home_screen.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
              
                      Image.asset(
                        AppImage.success,
                        height: 217,
                        width: 243,
                        fit: BoxFit.contain,
                      ),
              
                  const SizedBox(height: 40),

                  const Text(
                    "Your Order has been\naccepted",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color:AppColor.blackColor,
                    
                    ),
                  ),
              
                  const SizedBox(height: 18),
              
                  const Text(
                    "Your items has been placed and is on\nit's way to being processed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color:AppColor.grayColor,
                      
                    ),
                  ),
              
                  const SizedBox(height: 50),
              
                  
                  
                    MainButton(
                      text: "Go To Home",
                      onPressed: () {
                        pushReplacement(context, HomeScreen());
                      },
                    ),
                  
                ],
              ),
            ),
          
        ),
      ),
    );
  }
}