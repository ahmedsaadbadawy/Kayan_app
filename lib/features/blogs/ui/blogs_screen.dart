import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';

import 'widgets/blog_card.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

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
            itemCount: 5,
            itemBuilder: (context, index) {
              return BlogCard(
                imageUrl:
                    'https://kayan-eg.netlify.app/assets/blog_image1-BBqTOcvD.webp',
                date: 'Dec 28, 2024',
                title: 'Blog Title',
                onTap: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
