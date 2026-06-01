import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: myPadding,
          child: Column(
            children: [
              SkipButton(
                onPressed: () {
                  context.go(AppRouter.kHomeScreen);
                },
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
