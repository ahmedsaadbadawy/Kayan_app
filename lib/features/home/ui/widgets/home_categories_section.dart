import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:kayan_app/features/home/ui/widgets/category_card.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 6.h,
        children: [
          CategoryCard(
            title: 'Find Your Dream Home',
            subTitle:
                'Discover your dream home with our curated property listings.',
            image:
                'https://kayan-eg.netlify.app/assets/hero_section_image-CN7sSwXX.webp',
            onTap: () {
              context.push(AppRouter.kPropertiesScreen);
            },
          ),
          CategoryCard(
            title: 'Our Finishes',
            subTitle:
                'Every detail can be fully customized to match your personal taste.',
            image:
                'https://kayan-eg.netlify.app/assets/blog_image3-Boe7FkkG.webp',
            onTap: () {
              context.push(AppRouter.kFinishesScreen);
            },
          ),
          CategoryCard(
            title: 'Our Experts Tips',
            subTitle:
                'Transformed luxury living that effortlessly merges comfort with style.',
            image:
                'https://kayan-eg.netlify.app/assets/blog_image2-Cl_xLFF3.webp',
            onTap: () {
              context.push(AppRouter.kBlogsScreen);
            },
          ),
        ],
      ),
    );
  }
}
