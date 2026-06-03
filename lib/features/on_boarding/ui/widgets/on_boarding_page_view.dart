import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';

import '../../data/onboarding_list.dart';

class OnBoardingPageView extends StatelessWidget {
  final void Function(int)? onPageChanged;
  const OnBoardingPageView({super.key, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onPageChanged,
      itemCount: onboardingList.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 2.h,
          children: [
            Image.asset(
              onboardingList[index].image,
              height: 120.h,
            ),
            Text(
              onboardingList[index].title,
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: ksecondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              onboardingList[index].description,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
