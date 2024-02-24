
import 'package:flutter/material.dart';
import 'package:profile_page/models/profile_tab_model.dart';
import 'package:profile_page/res/app_colors.dart';
import 'package:profile_page/res/components/custom_text_widget.dart';
import 'package:profile_page/views/profile_screen.dart';

class CustomTile extends StatelessWidget {
  final ProfileTileModel item;
  const CustomTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.tabColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: ListTile(
          leading: Icon(
            item.icon,
            color: AppColors.black,
          ),
          title: CustomTextWidget(
            text: item.title,
            color: AppColors.black,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ));
  }
}