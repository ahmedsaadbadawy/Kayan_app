import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';

import 'widgets/hero_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            Image.network(
              'https://kayan-eg.netlify.app/assets/logo_image-BCHM58D5.webp',
              width: 60.w,
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            horizontalSpace(8.w),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: myPadding,
          child: SingleChildScrollView(
            child: Column(
              spacing: 6.h,
              children: [
                CategoryCard(
                  title: 'Find Your Dream Home',
                  subTitle:
                      'Discover your dream home with our curated property listings.',
                  image:
                      'https://kayan-eg.netlify.app/assets/hero_section_image-CN7sSwXX.webp',
                  onTap: () {},
                ),
                CategoryCard(
                  title: 'Our Finishes',
                  subTitle:
                      'Every detail can be fully customized to match your personal taste.',
                  image:
                      'https://kayan-eg.netlify.app/assets/blog_image3-Boe7FkkG.webp',
                  onTap: () {},
                ),
                CategoryCard(
                  title: 'Our Experts Tips',
                  subTitle:
                      'Transformed luxury living that effortlessly merges comfort with style.',
                  image:
                      'https://kayan-eg.netlify.app/assets/blog_image2-Cl_xLFF3.webp',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
