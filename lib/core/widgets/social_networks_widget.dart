import 'package:basketball_app/core/app_colors.dart';
import 'package:basketball_app/core/app_images.dart';
import 'package:flutter/material.dart';

class SocialNetWorksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.white,
          child: Image.asset(
            AppImages.facebook,
            height: 40,
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.white,
          child: Image.asset(
            AppImages.google,
            height: 40,
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.white,
          child: Image.asset(
            AppImages.twitter,
            height: 40,
          ),
        ),
      ],
    );
  }
}
