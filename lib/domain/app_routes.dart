import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/splash/splash_page.dart';

class AppRoutes {
  static const String splashPage = "/";
  static const String  introPage = "intro";

  static Map<String, Widget Function(BuildContext)> getRoutes() =>{
    splashPage : (context) => SplashPage(),
    introPage : (context) => SplashPage(),
  };
}