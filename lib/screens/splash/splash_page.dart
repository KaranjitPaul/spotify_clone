import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';

class SplashPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          child: Image.asset(
            "assets/logo/Logo.png",
            width: 80,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
