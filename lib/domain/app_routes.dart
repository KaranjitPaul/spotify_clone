import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/create_account/create_account_page.dart';
import 'package:spotify_clone/ui/intro/choose_artist_page.dart';
import 'package:spotify_clone/ui/intro/intro_page.dart';
import 'package:spotify_clone/ui/splash/splash_page.dart';

class AppRoutes {
  static const String splashPage = "/";
  static const String introPage = "intro";
  static const String createAccountPage = "createAccount";
  static const String chooseArtistPage = "chooseArtist";

  static Map<String, Widget Function(BuildContext)> getRoutes() => {
    splashPage: (context) => SplashPage(),
    introPage: (context) => IntroPage(),
    createAccountPage: (context) => CreateAccountPage(),
    chooseArtistPage: (context) => ChooseArtistPage(),
  };
}
