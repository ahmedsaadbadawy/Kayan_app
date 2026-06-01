import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';

import '../../data/onboarding_list.dart';

class OnBoardingDotIndicator extends StatelessWidget {
  final int currentPage;
  const OnBoardingDotIndicator({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          onboardingList.length,
          (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.all(7).r,
            height: index == currentPage ? 5.h : 4.h,
            width: index == currentPage ? 14.w : 10.w,
            decoration: BoxDecoration(
              color: index == currentPage ? ksecondaryColor : Colors.grey,
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
      ),
    );
  }
}
