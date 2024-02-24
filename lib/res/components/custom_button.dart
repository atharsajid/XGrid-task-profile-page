
import 'package:flutter/material.dart';
import 'package:profile_page/res/app_colors.dart';
import 'package:profile_page/res/components/custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? fontColor;
  final double? height;
  final double? width;

  const CustomButton({
    super.key,
    required this.title,
    this.backgroundColor,
    this.height,
    this.width,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            24,
          ),
        ),
      ),
      child: CustomTextWidget(
        text: title,
        color: fontColor ?? AppColors.black,
      ),
    );
  }
}
