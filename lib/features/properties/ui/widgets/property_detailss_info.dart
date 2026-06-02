import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:kayan_app/core/utils/themes/theme_text.dart';

class PropertyDetailsInfo extends StatelessWidget {
  const PropertyDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.h,
      crossAxisAlignment: .start,
      children: [
        Text(
          'Property Name',
          style: ThemeText.text24darkBlue(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Text(
              'EGP ',
              style: ThemeText.text18secondary(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '6,000,000',
              style: ThemeText.text20secondary(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Row(
          spacing: 6.w,
          children: [
            Icon(Icons.location_on_outlined, color: ksecondaryColor),
            Text(
              'location',
              style: ThemeText.text16grayUnderlined(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        // TO DO: contacts Row
        verticalSpace(6.h),
        Row(
          spacing: 6.w,
          children: [
            Container(width: 2.5.w, height: 18.w, color: kprimaryColor),
            Text(
              'About the property',
              style: ThemeText.text20darkBlue(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Text('description' * 60, style: ThemeText.text16gray()),
      ],
    );
  }
}
