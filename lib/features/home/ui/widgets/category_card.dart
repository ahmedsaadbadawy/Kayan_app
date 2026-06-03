import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    this.onTap,
  });
  final String title, subTitle, image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 12).h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(image).image,
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(
            //   Colors.black.withValues(alpha: 0.05),
            //   BlendMode.darken,
            // ),
          ),
          borderRadius: .circular(12.r),
        ),
        height: 200.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: .bold,
                color: Colors.white,
              ),
              textAlign: .center,
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: .w500,
                color: Colors.white,
              ),
              textAlign: .center,
            ),
          ],
        ),
      ),
    );
  }
}
