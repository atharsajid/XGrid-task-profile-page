import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_page/models/user_model.dart';
import 'package:profile_page/res/app_theme.dart';

import '../models/profile_tab_model.dart';

class ProfileViewModel extends GetxController {
  UserModel user = const UserModel(email: 'john.doe@example.com', name: 'John Doe');

  List<ProfileTileModel> profileTabList = [
    const ProfileTileModel(
      title: 'Privacy',
      icon: Icons.privacy_tip_rounded,
    ),
    const ProfileTileModel(
      title: 'Purchase History',
      icon: Icons.history,
    ),
    const ProfileTileModel(
      title: 'Help & Support',
      icon: Icons.help_outline_outlined,
    ),
    const ProfileTileModel(
      title: 'Settings',
      icon: Icons.settings,
    ),
    const ProfileTileModel(
      title: 'Invite a Friend',
      icon: Icons.person_add_outlined,
    )
  ];

  changeTheme() {
    currentTheme.toggle();
    update();
  }
}
