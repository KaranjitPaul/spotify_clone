import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';

InputDecoration getCreateAccTextFieldDecoration() => InputDecoration(
  filled: true,
  fillColor: AppColors.greyColor,
  enabledBorder: OutlineInputBorder(borderRadius: .circular(12)),
  focusedBorder: OutlineInputBorder(
    borderRadius: .circular(12),
    borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
  ),
);
InputDecoration getSearchTextFieldDecoration({
  IconData mIcon = Icons.search,
  Color bgColor = Colors.white,
  String mText = "Search",
}) => InputDecoration(
  isDense: true,
  filled: true,
  fillColor: bgColor,
  prefixIcon: Icon(mIcon),
  hintText: mText,
  hintStyle: TextStyle(color: AppColors.secondaryBlackColor),
  enabledBorder: OutlineInputBorder(borderRadius: .circular(12)),
  focusedBorder: OutlineInputBorder(borderRadius: .circular(12)),
);
