import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/ui/widgets/k_custom_button.dart';

class IntroPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        children: [
          Image.asset("assets/images/intro_bg.png"),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: .topCenter,
                end: .bottomCenter,
                colors: [
                  AppColors.blackColor.withValues(alpha: 0.3),
                  AppColors.blackColor,
                ],
              ),
            ),
          ),
          bottomLoginUI(context),
        ],
      ),
    );
  }
}

Widget bottomLoginUI(BuildContext context) => Container(
  padding: EdgeInsets.only(bottom: 50),
  width: .infinity,
  child: Column(
    mainAxisAlignment: .end,
    crossAxisAlignment: .center,
    spacing: 10,
    children: [
      SvgPicture.asset("assets/logo/Logo.svg", width: 50),
      Text(
        "Millions of Songs.\nFree on Spotify.",
        textAlign: .center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: .bold,
          color: AppColors.textWhiteColor,
        ),
      ),
      SizedBox(height: 6),
      KCustomButton(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.createAccountPage);
        },
        bgColor: AppColors.primaryColor,
        text: "Sign up free",
      ),
      KCustomButton(
        onTap: () {},
        text: "Continue with Google",
        textColor: AppColors.textWhiteColor,
        isOutlined: true,
        mIconPath: "assets/logo/Google.svg",
      ),
      KCustomButton(
        onTap: () {},
        text: "Continue with Facebook",
        textColor: AppColors.textWhiteColor,
        isOutlined: true,
        mIconPath: "assets/logo/face_book.svg",
      ),
      KCustomButton(
        onTap: () {},
        text: "Continue with Apple",
        textColor: AppColors.textWhiteColor,
        isOutlined: true,
        mIconPath: "assets/logo/Apple.svg",
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 16,
            fontWeight: .bold,
            color: AppColors.textWhiteColor,
          ),
        ),
      ),
    ],
  ),
);
