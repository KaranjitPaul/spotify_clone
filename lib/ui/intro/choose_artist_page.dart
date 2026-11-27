import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/domain/ui_helper.dart';
import 'package:spotify_clone/ui/widgets/k_circular_image_bg.dart';
import 'package:spotify_clone/ui/widgets/k_custom_button.dart';

class ChooseArtistPage extends StatefulWidget {
  ChooseArtistPage({super.key});

  @override
  State<ChooseArtistPage> createState() => _ChooseArtistPageState();
}

class _ChooseArtistPageState extends State<ChooseArtistPage> {
  List<int> selectedArtist = [];

  final List<Map<String, dynamic>> mArtist = [
    {"imgPath": "assets/images/Members.png", "name": "Members"},
    {"imgPath": "assets/images/MGK.png", "name": "MGK"},
    {"imgPath": "assets/images/Membersss.png", "name": "The Members"},
    {"imgPath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
    {"imgPath": "assets/images/Members.png", "name": "Members"},
    {"imgPath": "assets/images/MGK.png", "name": "MGK"},
    {"imgPath": "assets/images/Membersss.png", "name": "The Members"},
    {"imgPath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
    {"imgPath": "assets/images/Members.png", "name": "Members"},
    {"imgPath": "assets/images/MGK.png", "name": "MGK"},
    {"imgPath": "assets/images/Membersss.png", "name": "The Members"},
    {"imgPath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
    {"imgPath": "assets/images/Members.png", "name": "Members"},
    {"imgPath": "assets/images/MGK.png", "name": "MGK"},
    {"imgPath": "assets/images/Membersss.png", "name": "The Members"},
    {"imgPath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
    {"imgPath": "assets/images/Members.png", "name": "Members"},
    {"imgPath": "assets/images/MGK.png", "name": "MGK"},
    {"imgPath": "assets/images/Membersss.png", "name": "The Members"},
    {"imgPath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 75, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Choose 3 or more artists\nyou like.",
              style: TextStyle(
                height: 1,
                fontSize: 24,
                fontWeight: .bold,
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 15),
            TextField(decoration: getSearchTextFieldDecoration()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    GridView.builder(
                      itemCount: mArtist.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 25,
                        mainAxisExtent: 130,
                      ),
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: () {
                            if (!selectedArtist.contains(index)) {
                              selectedArtist.add(index);
                              setState(() {});
                            } else {
                              selectedArtist.remove(index);
                              setState(() {});
                            }
                          },
                          child: Column(
                            spacing: 10,
                            children: [
                              KCircularImageBg(
                                imgPath: mArtist[index]['imgPath'],
                                isSelected: selectedArtist.contains(index),
                              ),
                              Text(
                                mArtist[index]['name'],
                                style: TextStyle(
                                  color: AppColors.textWhiteColor,
                                  fontWeight: .bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: .bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: .topCenter,
                            end: .bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withValues(alpha: .5),
                              Colors.black,
                            ],
                          ),
                        ),
                        child: selectedArtist.length > 2
                            ? Center(
                                child: KCustomButton(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.choosePodcastPage,
                                    );
                                  },
                                  text: "Next",
                                  mWidth: 100,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
