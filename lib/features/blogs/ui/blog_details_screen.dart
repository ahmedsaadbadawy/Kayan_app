import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/themes/theme_text.dart';
import 'package:kayan_app/features/blogs/data/blog_model.dart';

class BlogDetailsScreen extends StatelessWidget {
  const BlogDetailsScreen({super.key, required this.blogModel});
  final BlogModel blogModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            MySliverAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16.h,
                  children: [
                    Center(
                      child: Text(
                        blogModel.title,
                        style: ThemeText.text24darkBlue().copyWith(
                          fontWeight: .w500,
                        ),
                        textAlign: .center,
                      ),
                    ),
                    Center(
                      child: Text(
                        blogModel.date,
                        style: ThemeText.text16gray(),
                        textAlign: .center,
                      ),
                    ),
                    verticalSpace(6.h),
                    Center(
                      child: ClipRRect(
                        borderRadius: .circular(16.r),
                        child: Image.asset(
                          blogModel.src,
                          fit: BoxFit.cover,
                          height: 300.h,
                        ),
                      ),
                    ),
                    verticalSpace(6.h),
                    Text(
                      blogModel.paragraphs[0],
                      style: ThemeText.text16gray(),
                    ),
                    Center(
                      child: Text(
                        blogModel.subTitle,
                        style: ThemeText.text20darkBlue().copyWith(
                          fontWeight: .w500,
                        ),
                        textAlign: .center,
                      ),
                    ),
                    Text(
                      blogModel.paragraphs[1],
                      style: ThemeText.text16gray(),
                    ),
                    Text(
                      blogModel.paragraphs[2],
                      style: ThemeText.text16gray(),
                    ),
                    verticalSpace(20.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
