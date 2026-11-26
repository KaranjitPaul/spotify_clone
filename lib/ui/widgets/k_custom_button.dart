import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KCustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final double mWidth, mHeight;
  final Color bgColor;
  final String text;
  final Color textColor;
  final String? mIconPath;
  final bool isOutlined;

  const KCustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.textColor = Colors.black,
    this.mWidth = 315,
    this.mHeight = 50,
    this.bgColor = Colors.white,
    this.mIconPath,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mWidth,
        height: mHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(mHeight / 2),
          color: isOutlined ? Colors.transparent : bgColor,
          border: Border.all(
            width: 1,
            color: isOutlined ? Colors.white : Colors.transparent,
          ),
        ),
        child: mIconPath != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  spacing: 35,
                  children: [
                    SvgPicture.asset(mIconPath!, width: 25),
                    Text(
                      text,
                      style: TextStyle(
                        fontWeight: .bold,
                        fontSize: 16,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: .bold,
                    fontSize: 16,
                    color: textColor,
                  ),
                ),
              ),
      ),
    );
  }
}
