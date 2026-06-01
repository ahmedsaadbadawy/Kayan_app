import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'widgets/property_card.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              snap: true,
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: kprimaryColor,
                  size: 28,
                ),
                onPressed: () => context.pop(),
              ),
            ),
          ];
        },
        body: SafeArea(
          top: false,
          child: ListView.builder(
            padding: .symmetric(horizontal: 16.w),
            itemCount: 10,
            itemBuilder: (context, index) {
              return PropertyCard(
                imageUrl:
                    'https://d28pk2nlhhgcne.cloudfront.net/assets/app/uploads/sites/3/2021/08/homebyme-homepage-gallery-9.jpg',
                name: 'Property Name',
                address: 'Property Address',
                status: 'FOR SALE',
                price: '6,000,000',
                onTap: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
