import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_page/res/app_colors.dart';
import 'package:profile_page/res/app_theme.dart';
import 'package:profile_page/res/components/custom_button.dart';
import 'package:profile_page/res/components/custom_text_widget.dart';
import 'package:profile_page/res/components/custom_tile.dart';
import 'package:profile_page/res/components/profile_avatar.dart';
import 'package:profile_page/res/extension.dart';
import 'package:profile_page/view_model/profile_view_model.dart';

import '../models/profile_tab_model.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final controller = Get.put(ProfileViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          GetBuilder(
              init: controller,
              builder: (_) {
                return IconButton(
                  onPressed: controller.changeTheme,
                  icon: AppTheme.isDarkMode
                      ? const Icon(
                          Icons.sunny,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.nightlight,
                          color: Colors.black,
                        ),
                );
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const ProfileAvatarWidget(),
              10.verticalSpace,
              CustomTextWidget(
                text: controller.user.name,
                fontSize: 18,
                weight: FontWeight.bold,
              ),
              10.verticalSpace,
              CustomTextWidget(
                text: controller.user.email,
                fontSize: 14,
              ),
              10.verticalSpace,
              const SizedBox(
                height: 40,
                width: 200,
                child: CustomButton(
                  title: 'Upgrade to pro',
                ),
              ),
              10.verticalSpace,
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTile(item: controller.profileTabList[index]),
                  );
                },
                separatorBuilder: (context, index) {
                  return 8.verticalSpace;
                },
                itemCount: controller.profileTabList.length,
              ),
              10.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomButton(
                        title: 'Logout',
                        backgroundColor: Theme.of(context).primaryColor,
                        fontColor: AppTheme.isDarkMode ? AppColors.black : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
