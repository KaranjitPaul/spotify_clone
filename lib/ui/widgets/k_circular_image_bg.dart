import 'package:flutter/material.dart';

class KCircularImageBg extends StatelessWidget {
  final double mWidth;
  final double mHeight;
  final String imgPath;
  final bool isSelected;

  const KCircularImageBg({
    super.key,
    this.mWidth = 100,
    this.mHeight = 100,
    this.isSelected = false,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight,
      width: mWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.white : Colors.transparent,
          width: isSelected ? 2 : 0,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        shape: .circle,
        image: DecorationImage(image: AssetImage(imgPath), fit: .cover),
      ),
      child: isSelected
          ? Center(
              child: CircleAvatar(
                backgroundColor: Colors.black.withValues(alpha: .5),
                radius: mWidth / 2,
                child: Icon(Icons.done, color: Colors.white),
              ),
            )
          : null,
    );
  }
}
