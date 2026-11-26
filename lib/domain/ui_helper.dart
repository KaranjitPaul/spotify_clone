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
