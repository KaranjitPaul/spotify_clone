import 'package:flutter/material.dart';

class KCircularImageBg extends StatelessWidget {
  final double mWidth;
  final double mHeight;
  final String imgPath;

  const KCircularImageBg({
    super.key,
    this.mWidth = 100,
    this.mHeight = 100,

    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight,
      width: mWidth,
      decoration: BoxDecoration(
        shape: .circle,
        image: DecorationImage(image: AssetImage(imgPath), fit: .cover),
      ),
    );
  }
}
