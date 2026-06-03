import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:kayan_app/manager/locale_cubit/locale_cubit.dart';

import 'widgets/on_boarding_page_view.dart';
import 'widgets/onboarding_dot_indicator.dart';
import 'widgets/onboarding_skip_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: myPadding,
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<LocaleCubit>().toggleLocale();
                    },
                    child: Text(
                      isRtl ? 'EN' : 'العربية',
                      style: TextStyle(color: kprimaryColor, fontSize: 14.sp),
                    ),
                  ),
                  Spacer(),
                  SkipButton(
                    onPressed: () {
                      context.go(AppRouter.kHomeScreen);
                    },
                  ),
                ],
              ),
              Expanded(
                child: OnBoardingPageView(
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),
              ),
              OnBoardingDotIndicator(currentPage: _currentPage),
            ],
          ),
        ),
      ),
    );
  }
}
