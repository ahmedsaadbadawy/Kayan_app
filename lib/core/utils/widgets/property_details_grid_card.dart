import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:kayan_app/core/utils/themes/theme_text.dart';

class PropertyDetailsGridCard extends StatelessWidget {
  const PropertyDetailsGridCard({
    super.key,
    required this.icon,
    required this.type,
    required this.value,
  });
  final IconData icon;
  final String type, value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14).h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(14.r),
      ),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Icon(icon, size: 40.sp, color: ksecondaryColor),
          verticalSpace(6.h),
          Text(
            type,
            style: TextStyle(fontSize: 16.sp, color: kdarkBlue),
          ),
          Text(
            value,
            style: ThemeText.text24darkBlue().copyWith(fontWeight: .w600),
          ),
        ],
      ),
    );
  }
}
