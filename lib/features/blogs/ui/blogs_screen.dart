import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:kayan_app/features/blogs/data/blogs_data_list.dart';

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
            itemCount: blogsDataList.length,
            itemBuilder: (context, index) {
              return BlogCard(
                imageUrl: blogsDataList[index].src,
                date: blogsDataList[index].date,
                title: blogsDataList[index].title,
                onTap: () {
                  context.push(
                    AppRouter.kBlogDetailsScreen,
                    extra: blogsDataList[index],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
