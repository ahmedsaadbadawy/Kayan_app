import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/widgets/about_property.dart';
import 'package:kayan_app/core/utils/widgets/my_video_player.dart';

import '../../../core/utils/widgets/property_details_grid.dart';
import '../data/models/finishes_model.dart';

class FinishesDetailsScreen extends StatelessWidget {
  const FinishesDetailsScreen({super.key, required this.finishesModel});
  final FinishesModel finishesModel;
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
                    MyVideoPlayer(videoUrl: finishesModel.videoUrl!),
                    verticalSpace(10.h),
                    PropertyDetailsGrid(
                      type: finishesModel.propertyType,
                      meters: finishesModel.squareMeters!,
                      rooms: finishesModel.rooms!,
                      parking: finishesModel.parking!,
                    ),
                    verticalSpace(20.h),
                    AboutProperty(description: finishesModel.about!),
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
