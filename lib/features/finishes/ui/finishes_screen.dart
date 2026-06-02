import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:kayan_app/core/utils/widgets/rounded_image.dart';

class FinishesScreen extends StatelessWidget {
  const FinishesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [MySliverAppBar()];
        },
        body: SafeArea(
          top: false,
          child: ListView.builder(
            padding: .symmetric(horizontal: 16.w),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16).h,
                child: GestureDetector(
                  onTap: () {
                    context.push(AppRouter.kFinishesDetailsScreen);
                  },
                  child: RoundedImage(
                    url:
                        'https://kayan-eg.netlify.app/assets/blog_image1-BBqTOcvD.webp',
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
