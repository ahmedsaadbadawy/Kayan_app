import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:kayan_app/core/utils/widgets/rounded_image.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
    required this.imageUrl,
    required this.date,
    required this.title,
    this.onTap,
  });
  final String imageUrl, date, title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20).h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedImage(url: imageUrl),
            verticalSpace(8.h),
            Text(
              date,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey[800],
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: kdarkBlue,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
