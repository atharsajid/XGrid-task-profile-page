
import 'package:flutter/material.dart';
import 'package:profile_page/res/app_colors.dart';

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.black,
        border: Border.all(
          width: 5,
          color: AppColors.primaryColor,
        ),
      ),
      child: const Icon(
        Icons.person_outline_outlined,
        color: AppColors.primaryColor,
        size: 48,
      ),
    );
  }
}
