import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:kayan_app/core/utils/widgets/rounded_image.dart';

import '../../data/models/property_model.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key, this.onTap, required this.propertyModel});
  final PropertyModel propertyModel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final statusColor = propertyModel.badgeText!.toLowerCase() == 'for sale'
        ? Colors.green
        : const Color(0xff155dfc);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20).h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedImage(url: propertyModel.imageUrl!),
            verticalSpace(6.h),
            Text(
              propertyModel.title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: kdarkBlue,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpace(6.h),
            Text(
              propertyModel.location!,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Divider(color: Colors.grey),
            Row(
              children: [
                Text(
                  'EGP${propertyModel.price!}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: kdarkBlue,
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.r),
                    border: Border.all(color: statusColor, width: 1.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ).r,
                    child: Text(
                      propertyModel.badgeText!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: statusColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
