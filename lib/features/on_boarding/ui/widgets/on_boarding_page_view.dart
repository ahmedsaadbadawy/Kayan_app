import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:kayan_app/l10n/app_localizations.dart';
import '../../data/onbourding_model.dart';

class OnBoardingPageView extends StatelessWidget {
  final void Function(int)? onPageChanged;
  const OnBoardingPageView({super.key, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    List<OnBourdingModel> onboardingList = [
      OnBourdingModel(
        image: 'assets/images/Rent.png',
        title: t.onboardingTitle1,
        description: t.onboardingDesc1,
      ),
      OnBourdingModel(
        image: 'assets/images/Advertise_property.png',
        title: t.onboardingTitle2,
        description:
            t.onboardingDesc2,
      ),
      OnBourdingModel(
        image: 'assets/images/talk_to_agent.png',
        title: t.onboardingTitle3,
        description:
            t.onboardingDesc3,
      ),
    ];

    return PageView.builder(
      onPageChanged: onPageChanged,
      itemCount: onboardingList.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 2.h,
          children: [
            Image.asset(onboardingList[index].image, height: 120.h),
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
