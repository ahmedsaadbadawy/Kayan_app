import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/widgets/my_video_player.dart';

import '../../../core/utils/widgets/property_details_grid.dart';
import '../data/models/property_model.dart';
import 'widgets/property_details_info.dart';

class PropertyDetailsScreen extends StatelessWidget {
  const PropertyDetailsScreen({super.key, required this.propertyModel});
  final PropertyModel propertyModel;
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
                    MyVideoPlayer(videoUrl: propertyModel.videoUrl!),
                    verticalSpace(10.h),
                    PropertyDetailsGrid(
                      type: propertyModel.propertyType!,
                      meters: propertyModel.squareMeters!,
                      rooms: propertyModel.rooms!,
                      parking: propertyModel.parking!,
                    ),
                    verticalSpace(10.h),
                    PropertyDetailsInfo(
                      price: propertyModel.price!,
                      name: propertyModel.title!,
                      location: propertyModel.location!,
                      description: propertyModel.description!,
                    ),
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
