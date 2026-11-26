import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';

class SplashPage extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.introPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: SvgPicture.asset(
          "assets/logo/Logo.svg",
          width: 80,
          colorFilter: const ColorFilter.mode(
            Color(0xFF1DB954),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
