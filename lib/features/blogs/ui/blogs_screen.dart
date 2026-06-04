import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:kayan_app/l10n/app_localizations.dart';

import '../data/blog_model.dart';
import 'widgets/blog_card.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    List<BlogModel> blogsDataList = [
      BlogModel(
        id: 1,
        title: t.blog1Title,
        date: t.blog1Date,
        src: 'assets/images/blog1.png',
        subTitle: t.blog1SubTitle,
        paragraphs: [t.blog1P1, t.blog1P2, t.blog1P3],
      ),
      BlogModel(
        id: 2,
        title: t.blog2Title,
        date: t.blog2Date,
        src: 'assets/images/blog2.png',
        subTitle: t.blog2SubTitle,
        paragraphs: [t.blog2P1, t.blog2P2, t.blog2P3],
      ),
      BlogModel(
        id: 3,
        title: t.blog3Title,
        date: t.blog3Date,
        src: 'assets/images/blog3.png',
        subTitle: t.blog3SubTitle,
        paragraphs: [t.blog3P1, t.blog3P2, t.blog3P3],
      ),
      BlogModel(
        id: 4,
        title: t.blog4Title,
        date: t.blog4Date,
        src: 'assets/images/blog4.png',
        subTitle: t.blog4SubTitle,
        paragraphs: [t.blog4P1, t.blog4P2, t.blog4P3],
      ),
      BlogModel(
        id: 5,
        title: t.blog5Title,
        date: t.blog5Date,
        src: 'assets/images/blog5.png',
        subTitle: t.blog5SubTitle,
        paragraphs: [t.blog5P1, t.blog5P2, t.blog5P3],
      ),
    ];

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [const MySliverAppBar()];
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
