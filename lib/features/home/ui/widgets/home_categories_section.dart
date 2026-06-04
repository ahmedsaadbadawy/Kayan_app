import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:kayan_app/features/home/ui/widgets/category_card.dart';
import 'package:kayan_app/l10n/app_localizations.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    // تعريف متغير الترجمة
    final t = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      child: Column(
        spacing: 6.h,
        children: [
          CategoryCard(
            title: t.findDreamHomeTitle,
            subTitle: t.findDreamHomeSubTitle,
            image: 'assets/images/hero.png',
            onTap: () {
              context.push(AppRouter.kPropertiesScreen);
            },
          ),
          CategoryCard(
            title: t.ourFinishesTitle,
            subTitle: t.ourFinishesSubTitle,
            image: 'assets/images/blog3.png',
            onTap: () {
              context.push(AppRouter.kFinishesScreen);
            },
          ),
          CategoryCard(
            title: t.ourExpertsTipsTitle,
            subTitle: t.ourExpertsTipsSubTitle,
            image: 'assets/images/blog2.png',
            onTap: () {
              context.push(AppRouter.kBlogsScreen);
            },
          ),
        ],
      ),
    );
  }
}
