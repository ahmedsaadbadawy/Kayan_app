import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/widgets/about_property.dart';
import 'package:kayan_app/core/utils/widgets/my_video_player.dart';

import '../../../core/utils/widgets/property_details_grid.dart';

class FinishesDetailsScreen extends StatelessWidget {
  const FinishesDetailsScreen({super.key});

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
                  spacing: 6.h,
                  children: [
                    MyVideoPlayer(
                      videoUrl: "https://files.catbox.moe/63y15e.mp4",
                    ),
                    verticalSpace(10.h),
                    PropertyDetailsGrid(
                      type: 'Family Home',
                      meters: 120,
                      rooms: 3,
                      parking: "Parking",
                    ),
                    verticalSpace(20.h),
                    AboutProperty(description: 'description' * 60),
                    verticalSpace(10.h),
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
