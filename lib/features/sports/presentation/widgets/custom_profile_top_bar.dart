import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kamn/core/const/constants.dart';
import 'package:kamn/core/theme/app_pallete.dart';
import 'package:kamn/core/theme/style.dart';

class CustomProfileTopBar extends StatelessWidget {
  const CustomProfileTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 37.h,
            width: 37.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppPallete.whiteColor.withOpacity(0.10)),
            child: Center(
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.arrow_back,
                  color: AppPallete.whiteColor,
                  size: 24.h,
                ),
                onPressed: () {
                  // Action for back button
                },
              ),
            ),
          ),
          Text(Constants.myProfile,
              style: TextStyles.font20White // Adjust font size
              ),
          CircleAvatar(
            backgroundColor: const Color(0xffF6F6F6).withOpacity(.4),
            child: IconButton(
              padding: EdgeInsets.zero,
              // Remove padding
              iconSize: 32.h,
              // Set the icon size here
              icon: const Icon(Icons.notifications_outlined),
              color: AppPallete.whiteColor,
              onPressed: () {
                // Notification action
              },
            ),
          ),
        ],
      ),
    );
  }
}
